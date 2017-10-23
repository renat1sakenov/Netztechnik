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

void DelayFor18TCY( void ) //18+ cycles delay
{__delay_us(20);   
    return;
}

void DelayPORXLCD(void)         // 15ms delay
{
__delay_ms(15);                 // 15ms delay with 4MHz Clock
}

void DelayXLCD(void)            // 5ms delay
 {
__delay_ms(5);                  // 5ms delay with 4MHz Clock
 }

/*
 * 
 */
int main() {
    __delay_ms(100);
    LATA = 0xFF;
    LATB = 0xFF;
    
	OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor
    
	Nop();	      
    char str_tmp[20];
    
    while(1)
    {
        int tmp;
        unsigned char channel=0x00,config1=0x00,config2=0x00,config3=0x00,portconfig=0x00,i=0;
        TRISAbits.RA0 = 1;
        config1 = ADC_FOSC_4 | ADC_RIGHT_JUST | ADC_4_TAD ;
        config2 = ADC_CH0 | ADC_INT_OFF | ADC_REF_VDD_VSS ;
        portconfig = ADC_1ANA ;
        OpenADC(config1,config2,portconfig);

        ConvertADC();
        while(BusyADC());
        tmp = ReadADC();
        
        sprintf(str_tmp, "%d",tmp);
        
        
        putsXLCD(str_tmp);      // Display "Hello World"
        //SetDDRamAddr(0x40);         // shift cursor to beginning of second line
        __delay_ms(300);
        OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor
        putsXLCD("jsfjdjd");
        __delay_ms(300);
        OpenXLCD( FOUR_BIT & LINES_5X7 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor
        CloseADC();
    }    
    
    

    return 1;
}