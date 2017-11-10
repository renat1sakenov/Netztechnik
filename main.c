/* 
 * TEMPERATURE LOGGER for the APIC -DE 1.1
 * Project for Systemnahe Programmierung
 * 
 * This project implements a temperature logging system.
 * The temperature and a counter is displayed on the LCD and is written every minute to the EEPROM
 * if the temperature is below min_temp or above max_temp, the buzzer rings an alarm
 * 
 * 
 * File:   main.c
 * Author: Renat Sakenov, Fabian Bartenschlager
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
#include "pwm.h"

union INT
{
    int number;
    unsigned char bytes[2];
};

union UINT
{
    unsigned int number;
    unsigned char bytes[2];
};

/*
 *  holds the value of the current low-byte for the EEPROM address.
 */
char eeprom_laddress = 0x00;


/*
 *  holds the value of the current high-byte for the EEPROM address.
 */
char eeprom_haddress = 0x00;

/*
 *  Our model for saving the temperature and timestamp consists out of 4 byte blocks.
 *  2 bytes for the temperature and 2 bytes for the timestamp.
 * 
 */
int block_size = 4;                 
int temp_size = 2;
int time_size = 2;


/*
 *  When reading a block from the EEPROM, the result is stored in this array
 */
unsigned char result[4];                        

/*
 *  The measured temperature is hold in this variable, before it's written to the EEPROM
 *
 */
union INT temp;

/*
 *  This variable contains the passed minutes. It is written to the EEPROM.
 *  When reading from the EEPROM it is converted in hour:minutes and then displayed
 *  The total amount of time we can track are 65535 minutes (~45 + 1/2 days)
 */
union UINT total_time;

/*
 * These variables are used to just display the current time. They are not written to the EEPROM.
 */
unsigned char sec,min,hour = 0x00;

/*
 *  helper.
 */
unsigned char old_sec = 0x00;


/*
 * maximal and minimal temperature on which the buzzer don't ring an alarm
 */
int max_temp = 185;
int min_temp = 180;


/*
 *  helper to display the data on the LCD
 */
char display[10];
char time[10];


/**
 * Function from Mr. Gontean
 * Writing one byte to the EEPROM
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

/*Function from Mr. Gontean     */
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

/*
 *  Necessary delay method for the LCD
 */
void DelayFor18TCY( void )
{
    __delay_us(20);   
}

/*
 *  Necessary delay method for the LCD
 */
void DelayPORXLCD(void)
{
    __delay_ms(15);                 // 15ms delay with 4MHz Clock
}

/*
 *  Necessary delay method for the LCD
 */
void DelayXLCD(void)            
{
    __delay_ms(5);                  // 5ms delay with 4MHz Clock
}
 
/*
 *  Initializing the LCD
 */
void initXLCD()
{
    OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor    
}

/*
 *  Initializing the ADC
 *  Used for temperature conversion
 */
void initADC(void)
{
    unsigned char channel=0x00,adc_config1=0x00,adc_config2=0x00,config3=0x00,portconfig=0x00,i=0;
    TRISAbits.RA0 = 1;
    adc_config1 = ADC_FOSC_4 & ADC_RIGHT_JUST & ADC_8_TAD ;
    adc_config2 = ADC_CH0 & ADC_INT_OFF & ADC_REF_VDD_VSS ;
    portconfig = ADC_1ANA ;
    OpenADC(adc_config1,adc_config2,portconfig);    
}

/*
 *  Initializing the Timer
 *  Used to measure the time
 */
void initTimer(void)
{    
    // set bits to configure Timer
    T1CON = 0x8F;
    // set timer register half full
    TMR1 = 0x8000;
    TMR1IE = 1;
    // enable global interrupt
    GIE = 1;
    PEIE = 1;
}

/**
 * writes 'size' bytes from the array 'd' into the EEPROM. 
 * Start positions are eeeprom_laddress / eeprom_haddress.
 * eeprom_laddress and eeprom_haddress are increased
 * @param d Data array.
 * @param size Size of the data array.
 * @return 0 = success, -1 = Error, the memory is full
 */
int write_one_block(unsigned char* d, int size)
{
    int i = 0;
    while(eeprom_laddress < 0xFF && i < size)
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

/**
 * write one block (temperature and timestamp) to the EEPROM
 * @param temp  temperature as an byte array
 * @param date  timestamp as an byte array 
 * @return 0 = success, otherwise error, memory is full
 */
int write_data(unsigned char * temp, unsigned char * date)
{
     return write_one_block(temp,temp_size) + write_one_block(date,time_size);
}
 
 /**
  * Puts the last 'n'-th blocks (4 bytes) from the EEPROM into 'result'
  * @n block number. if n equals 1 = the last written entry. 
  * @return 0 = success, -1 = there is nothing to read.
  */
 int read_data(int n)
 {
     if(n >= 1)
     {
        int counter = block_size * n;
        int tla = eeprom_laddress;
        int tha = eeprom_haddress;
        while(1)
        {
           counter--;
           tla--;

           if(counter > 0 && tla == 0)
           {
               tla = 0xFF;
               if(tha > 0)
               {
                   tha--;
               }
               else
               {
                   //already on block 0
                   return -1;
               }
           }
           if(counter == 0)
               break;
        }
        if(HDByteReadI2C(0xA0,tha,tla,result,block_size) == 0)
            return 0;
        else return -1;
     }
     return -1;
 }
 
 
 /**
  * read the temperature into 'temp'
  */
 void read_temperature(void)
 {
    ConvertADC();
    while(BusyADC());
    temp.number = (int)((float)ReadADC() * 1000/255);
 }
 
 /**
  * print the values from 'result' to the LCD as temperature and timestamp
  */
 void print_data(void)
 {
    int j = 0;
    union INT uint2;
    union UINT uint3;
    for(; j<temp_size; j++)
        uint2.bytes[j] = result[j];
 
    for(; j<block_size; j++)
        uint3.bytes[j-temp_size] = result[j];
 
    initXLCD();
    char print_this[10];
    sprintf(print_this,"%d.%d %d:%d:00",(uint2.number/10),(uint2.number%10),(uint3.number / 60 / 60),(uint3.number % 60));
    putsXLCD(print_this);     
 }
 
 /**
  * helper method for print_data
  */
void test_readwrite(void)
{
    //if test data is needed, uncomment. writes 160 and '61' (1:1) into the EEPROM.
    /* 
    union INT testd;
    union UINT testd2;
    testd.number = 160;
    testd2.number = 61
    write_data(testd.bytes,testd2.bytes);
    __delay_ms(1000);
    */ 
    initXLCD();
    putsXLCD("SHOW DATA");
    __delay_ms(2000);
    initXLCD();
    
    print_data();
    
    __delay_ms(1000);
    initXLCD();
    putsXLCD("END");
    __delay_ms(1000);  
}

/**
 * print all values from the EEPROM (in reversed order, from now to the start)
 */
void print_all_data()
{
    int a = 1;
    initXLCD();
    putsXLCD("SHOW ALL DATA");
    __delay_ms(500);
    
    
    while(read_data(a++) != -1)
    {
        initXLCD();
        print_data();
        __delay_ms(500);
        initXLCD();
        putsXLCD("NEXT");
        __delay_ms(500);
    }
    initXLCD();
    putsXLCD("END");
    __delay_ms(500);
}
 
/*
 *  Rings the alarm
 */
void alarm (){
    OpenPWM1(((100000/2.0f)/4)-1);
    SetDCPWM1((100000/2.0f)/2);
    SetOutputPWM1(SINGLE_OUT,PWM_MODE_1);
    __delay_ms(1000);
    ClosePWM1();
    __delay_ms(100);
    return;
}

/*
 *  Timer interrupt. Gets called every second
 *  Increases the values of hour,min and sec to display the time
 */
void high_priority interrupt TIMER1(void){
    if(TMR1IF == 1){
        TMR1IF = 0;
        TMR1 = 0x8000;
        sec++;
        if(sec==60)
        {
            total_time.number++;
            min++;
            sec=0;
            if(min>=60)
            {
                hour++;
                min=0;
            }
        }
    }
}

int main() 
{
    total_time.number = 0;
    LATA = 0xFF;
    LATB = 0xFF;
    TRISC = 0xFF;
    SSPADD = 0x27;
    initTimer();        
    initADC();
    initXLCD();
    OpenI2C(MASTER, SLEW_OFF); 
    
    while(1)
    {    
        if(old_sec != sec)
        {
            old_sec = sec;
            initXLCD();
            read_temperature();  

            sprintf(time, "%d:%d:%d", hour,min,sec);
            sprintf(display, "%d.%d %s",(temp.number/10),(temp.number%10), time);
            putsXLCD(display);

            //check temperature once a minute
            if(sec == 30)
            { 
                if(temp.number > max_temp || temp.number < min_temp){
                    alarm();alarm();alarm();
                }
            }   

            //save the data every minute    
            if (sec == 1){
                if(write_data(temp.bytes,total_time.bytes) < 0)
                {
                    initXLCD();
                    putsXLCD("memory full");
                    __delay_ms(100);
                }
                __delay_ms(20);
                
                //read the last written block from the EEPROM and display it
                //read_data(1);
                //test_readwrite();
                
                //read all blocks from the EEPROM and display them
                print_all_data();
            }
        }        
    }  
}