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

union FLOAT
{
 float number;
 unsigned char bytes[4];
};

char eeprom_laddress = 0x00;
char eeprom_haddress = 0x00;
int block_size = 7;                 //4 bytes for temperature, 3 bytes for date
int temp_size = 4;
int date_size = 3;
unsigned char result[7];                        //result

union FLOAT converted_temp;
unsigned char msec,sec,min,hour = 0x00;


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
 
void initXLCD()
{
    OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor    
}

void initADC(void)
{
    unsigned char channel=0x00,adc_config1=0x00,adc_config2=0x00,config3=0x00,portconfig=0x00,i=0;
    TRISAbits.RA0 = 1;
    adc_config1 = ADC_FOSC_4 & ADC_RIGHT_JUST & ADC_4_TAD ;
    adc_config2 = ADC_CH0 & ADC_INT_OFF & ADC_REF_VDD_VSS ;
    portconfig = ADC_1ANA ;
    OpenADC(adc_config1,adc_config2,portconfig);    
}

void initTimer(void)
{
    unsigned char timer_config1=0x00;
    unsigned char timer_config2=0x00;
    unsigned int timer_value=0x00;
    timer_config1 = T1_16BIT_RW | T1_SOURCE_EXT | T1_PS_1_2| T1_OSC1EN_OFF | T1_SYNC_EXT_OFF | TIMER_INT_ON;
    OpenTimer1(timer_config1);
    WriteTimer1(timer_value);
}

/**
 * writes size bytes from d into the eeprom. start positions are eeprom_laddress / eeprom_haddress
 * eeprom_l/h address are increased.
 * @param d
 * @param size
 * @return 
 */
int write_one_block(unsigned char* d, int size)
{
    int i = 0;
    while(eeprom_laddress < 0xFF & i < size)
    {
        HDByteWriteI2C(0xA0,eeprom_haddress,eeprom_laddress++,*d);
        i++;d++;
    }
    if( i != size)
    {
        eeprom_laddress = 0;
        if(eeprom_haddress < 0xFF)
        {
            eeprom_haddress++;
            while(i < size){
                HDByteWriteI2C(0xA0,eeprom_haddress,eeprom_laddress++,*d);
                i++;d++;
            }
        }
        else
        {
            //memory full
            return -1;
        }
    }
    return 0;
}

int write_data(unsigned char * temp, unsigned char * date)
{
     return write_one_block(temp,temp_size) + write_one_block(date,date_size);
}
 
 /**
  * Puts the last 7 Bytes from the eeprom into "result" 
  * if there are none returns -1
  * @return 
  */
 int read_data(void)
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
             return -1;
         }
     }     
     if(HDByteReadI2C(0xA0,tha,tla,result,7) == 0)
         return 0;
     else return -1;
 }
 
 /**
  * read the temperature into converted_temp
  */
 void read_temperature(void)
 {
    ConvertADC();
    while(BusyADC());
    converted_temp.number = ((float)ReadADC() *100/255);
 }
 
 /**
  * prints the value from "result" (temperature and time)
  */
void test_readwrite()
{
     //if test data is needed, uncomment. writes 16.0f and 'abc' into the eeprom.
    /* 
    union FLOAT funion;
    funion.number = 16.0f;
    char test2[3] = {'a','b','c'};    
    write_data(funion.bytes,test2);
    __delay_ms(1000);
    */ 
    initXLCD();
    putsXLCD("MEM TEST");
    __delay_ms(2000);
    initXLCD();
    
    int j = 0;
    union FLOAT funion2;
    for(; j<4; j++)
        funion2.bytes[j] = result[j];

    char temp[4];
    sprintf(temp,"%f",funion2.number);
    
    unsigned char time[3];
    for(; j<7; j++)
        time[j-4] = result[j];
    
    putsXLCD(temp);
    __delay_ms(1000);
    initXLCD();
    unsigned char str_temp2[3];
    sprintf(str_temp2,"%d:%d:%d",time[0],time[1],time[2]);
    putsXLCD(str_temp2);
    
    __delay_ms(1000);
    initXLCD();
    putsXLCD("END TEST");
    __delay_ms(1000);  
}
 
/*
 * 
 */
int main() 
{
    __delay_ms(100);
    LATA = 0xFF;
    LATB = 0xFF;
    TRISC = 0xFF;
    SSPADD = 0x27;
    
  
    initADC();
    initTimer();
    OpenI2C(MASTER, SLEW_OFF); 
    
    char str_tmp[10];
    char time[20];
    
    while(1)
    {
        if(PIR1bits.TMR1IF=1)
        {
            initXLCD();
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
                        /*if(hour>=24)
                        {
                            hour=0;
                        }*/
                    }
                }
            }            
            read_temperature();  
            sprintf(time, "%d:%d:%d", hour,min,sec);
            sprintf(str_tmp, "%.2f %s",converted_temp.number, time);
            putsXLCD(str_tmp);
            
            //save the data every 2 minutes
            if(min % 2 == 0 && sec == 0 && msec == 1)
            {
                unsigned char date[3];
                date[0] = hour;
                date[1] = min;
                date[2] = sec;
                write_data(converted_temp.bytes,date);
                
                //testing 
                /* 
                __delay_ms(100);
                read_data();
                test_readwrite();
                */
            }   
        }
    }
}