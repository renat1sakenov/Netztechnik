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

/*
 * 
 */
int main() {
    __delay_ms(100);
    LATA = 0xFF;
    LATB = 0xFF;
    
    initXLCD();
          
    char str_tmp[20];
    char time[30];
    int tmp;
    int sec, min, hour =0;
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
    initXLCD();
    while(1)
    {
        //read temp
        ConvertADC();
        while(BusyADC());
        tmp = ReadADC();
        //initXLCD();
        //putsXLCD("Test");
        //__delay_ms(500);
        //initXLCD();
        
        
        if(PIR1bits.TMR1IF=1)
        {
            sec +=1;
            if (sec > 30){
                sec = 0;
                min +=1;
                if(min > 6){
                    min = 0;
                    hour += 1;
                }
            }
            sprintf(time, "%d:%d:%d", hour,min,sec);
            sprintf(str_tmp, "%d, %s",tmp, time);
        
            //display temp
            putsXLCD(str_tmp);     
            __delay_ms(500);
        }
        CloseADC();
        CloseTimer1();

        return 1;
    }
}