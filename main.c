/* 
 * File:   main.c
 * Author: renat
 *
 * Created on October 16, 2017, 1:32 PM
 */
#include <xc.h>
#include "Definitions.h"
#include "XLCD.H"
#include "adc.h"
#include <stdio.h>
#include "i2c.h"
#include "timers.h"

char eeprom_laddress = 0x00;
char eeprom_haddress = 0x00;
int block_size = 7;                 //4 bytes for temperature, 3 bytes for date
int temp_size = 4;
int date_size = 3;


union FLOAT
{
 float number;
 unsigned char bytes[4];
};

void print_number(char str1[])
{
    char ps[5];
    
    sprintf(ps,"%d",str1);
    putsXLCD(ps);
}

/**
 * Function from Mr. Gontean
 * @param ControlByte
 * @param HighAdd
 * @param LowAdd
 * @param data
 * @return 
 */
unsigned char HDByteWriteI2C( unsigned char ControlByte, unsigned char HighAdd, unsigned char LowAdd, unsigned char data )
{
  IdleI2C();                      // ensure module is idle
  StartI2C();                     // initiate START condition
  while ( SSPCON2bits.SEN );      // wait until start condition is over 
  WriteI2C( ControlByte );        // write 1 byte - R/W bit should be 0
  IdleI2C();                      // ensure module is idle
  WriteI2C( HighAdd );            // write address byte to EEPROM
  IdleI2C();                      // ensure module is idle
  WriteI2C( LowAdd );             // write address byte to EEPROM
  IdleI2C();                      // ensure module is idle
  WriteI2C ( data );              // Write data byte to EEPROM
  IdleI2C();                      // ensure module is idle
  StopI2C();                      // send STOP condition
  while ( SSPCON2bits.PEN );      // wait until stop condition is over 
  while (EEAckPolling(ControlByte));  //Wait for write cycle to complete
  return ( 0 );                   // return with no error
}

/********************************************************************
*     Function Name:    HDByteReadI2C                               *
*     Parameters:       EE memory ControlByte, address, pointer and *
*                       length bytes.                               *
*     Description:      Reads data string from I2C EE memory        *
*                       device. This routine can be used for any I2C*
*                       EE memory device, which only uses 1 byte of *
*                       address data as in the 24LC01B/02B/04B/08B. *
*                                                                   *  
********************************************************************/
unsigned char HDByteReadI2C( unsigned char ControlByte, unsigned char HighAdd, unsigned char LowAdd, unsigned char *data, unsigned char length )
{
  IdleI2C();                      // ensure module is idle
  StartI2C();                     // initiate START condition
  while ( SSPCON2bits.SEN );      // wait until start condition is over 
  WriteI2C( ControlByte );        // write 1 byte 
  IdleI2C();                      // ensure module is idle
  WriteI2C( HighAdd );            // WRITE word address to EEPROM
  IdleI2C();                      // ensure module is idle
  while ( SSPCON2bits.RSEN );     // wait until re-start condition is over 
  WriteI2C( LowAdd );             // WRITE word address to EEPROM
  IdleI2C();                      // ensure module is idle
  RestartI2C();                   // generate I2C bus restart condition
  while ( SSPCON2bits.RSEN );     // wait until re-start condition is over 
  WriteI2C( ControlByte | 0x01 ); // WRITE 1 byte - R/W bit should be 1 for read
  IdleI2C();                      // ensure module is idle
  getsI2C( data, length );       // read in multiple bytes
  NotAckI2C();                    // send not ACK condition
  while ( SSPCON2bits.ACKEN );    // wait until ACK sequence is over 
  StopI2C();                      // send STOP condition
  while ( SSPCON2bits.PEN );      // wait until stop condition is over 
  return ( 0 );                   // return with no error
}

void DelayFor18TCY( void ) //18+ cycles delay
{
    __delay_us(20);   
}

void DelayPORXLCD(void)         // 15ms delay
{
    __delay_ms(15);                 // 15ms delay with 4MHz Clock
}

void DelayXLCD(void)            // 5ms delay
{
    __delay_ms(5);                  // 5ms delay with 4MHz Clock
}
 
void initXLCD(void)
{
    OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor    
}

int traverse_one_block(unsigned char* d, int size, unsigned char rw, int* sh,int* sl)
{
    int i=0;
    while(*sl < 0xFF & i < size)
    {
        if(rw == 'w'){
            HDByteWriteI2C(0xA0,*sh,*sl,*d);
        }
        else
        {
            HDByteReadI2C(0xA0,*sh,*sl,d,0x01);
        }
        d++;i++;(*sl)++;
    }
    if( i != size)
    {
        *sl = 0;
        if(*sh < 0xFF)
        {
            (*sh)++;
            while(i < size){
                if(rw == 'w')
                    HDByteWriteI2C(0xA0,*sh,*sl,*d);
                else
                    HDByteReadI2C(0xA0,*sh,*sl,d,1);
                i++;d++;(*sl)++;
            }
        }
        else
        {
            //reached last block
            return -1;
        }
    }
    return 0;    
}

int write_one_block(unsigned char* d, int size)
{
    return traverse_one_block(d,size,'w',&eeprom_haddress,&eeprom_laddress);
}

 int write_data(unsigned char * temp, unsigned char * date)
 {
     return write_one_block(temp,temp_size) + write_one_block(date,date_size);
 }
 
 /**
  * 
  * @return 
  */
 unsigned char * read_data()
 {
     int counter = block_size;
     int tla = eeprom_laddress;
     int tha = eeprom_haddress;
     while(tla > 0x00 && counter > 0)
     {
         counter--;
         tla--;
     }
     if(counter > 0)
     {
         tla = 0xFF;
         if(tha > 0)
         {
             tha--;
             while(counter > 0)
             {
                 tla--;
             }
         }
         else
         {
             //already on block 0
             return NULL;
         }
     }
     //set to right position, read from here
     unsigned char res[7];
     if(traverse_one_block(res,block_size,'r',&tla,&tha) == 0)
        return res;
     else return NULL;
 }
 
/*
 * 
 */
int main() {
    __delay_ms(100);
    LATA = 0xFF;
    LATB = 0xFF;
    TRISC = 0xFF;
    SSPADD = 0x27;
  
    initXLCD();
    OpenI2C(MASTER, SLEW_OFF); 
    
    union FLOAT funion;
    funion.number = 18.0f;
 
    char test2[3] = {'a','b','c'};    
    int ret2 = write_data(funion.bytes,test2);
    print_number(ret2);
    
    __delay_ms(1000);
    initXLCD();
    
    unsigned char * res2;
    res2 = read_data();
    
    int j = 0;
    union FLOAT funion2;
    for(; j<4; j++)
        funion2.bytes[j] = res2[j];

    char temp[5];
    sprintf(temp,"%.2f",funion2.number);
    
    char time[3];
    for(; j<7; j++)
        time[j-4] = res2[j];
    
    putsXLCD(temp);
    __delay_ms(1000);
    initXLCD();
    putsXLCD(time);
    __delay_ms(1000);

     /*
    char str_tmp[20];
    char time[30];
    int tmp;
    float converted_temp;
    
    int msec, sec, min, hour;
    unsigned char channel=0x00,adc_config1=0x00,adc_config2=0x00,config3=0x00,portconfig=0x00,i=0;
    TRISAbits.RA0 = 1;
    adc_config1 = ADC_FOSC_4 & ADC_RIGHT_JUST & ADC_4_TAD ;
    adc_config2 = ADC_CH0 & ADC_INT_OFF & ADC_REF_VDD_VSS ;
    portconfig = ADC_1ANA ;
    OpenADC(adc_config1,adc_config2,portconfig);

    unsigned char timer_config1=0x00;
    unsigned char timer_config2=0x00;
    unsigned int timer_value=0x00;
    timer_config1 = T1_16BIT_RW | T1_SOURCE_EXT | T1_PS_1_2| T1_OSC1EN_OFF | T1_SYNC_EXT_OFF | TIMER_INT_ON;
    OpenTimer1(timer_config1);
    
    WriteTimer1(timer_value);
    //main routine
    //initXLCD();
    while(1)
    {
        //read temp
        ConvertADC();
        while(BusyADC());
        tmp = ReadADC();
        converted_temp = ((float)tmp *100/255);
        //initXLCD();
        //putsXLCD("Test");
        //__delay_ms(500);
        //initXLCD();
        
        if(PIR1bits.TMR1IF=1)
        {
            msec++;
            if(msec>=10)
            {
                sec++;
                msec=0;
                if(sec>=60)
                {
                    min++;
                    sec=0;
                    if(min>=60)
                    {
                        hour++;
                        min=0;
                        if(hour>=24)
                        {
                            hour=0;
                        }
                    }
                }
            }
            
            sprintf(time, "%2d:%2d:%2d", hour,min,sec);
            sprintf(str_tmp, "%.2f, %s",converted_temp, time);
        
            //display temp
            putsXLCD(str_tmp);     
          
        }
        CloseADC();
        //CloseTimer1();
    
        return 1;
    }
     */  
}