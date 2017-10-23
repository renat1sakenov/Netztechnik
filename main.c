/* 
 * File:   main.c
 * Author: renat
 *
 * Created on October 16, 2017, 1:32 PM
 */

#include <xc.h>
#include "Definitions.h"
#include "XLCD.H"

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
    
	OpenXLCD( FOUR_BIT & LINE_5X10 );	
    while(BusyXLCD());              // Check if the LCD controller is not busy                              
    WriteCmdXLCD(0x06);            // move cursor right, don?t shift display
    WriteCmdXLCD(0x0C);            // turn display on without cursor
    
	Nop();	      
    while(1)
    {
      putrsXLCD("Test");      // Display "Hello World"
      SetDDRamAddr(0x40);            // shift cursor to beginning of second line
      putrsXLCD("LCD Display     ");      // Display "LCD display"
    }    
    
    /*
    OpenXLCD(EIGHT_BIT & LINES_5X7);
    while(BusyXLCD());
    PORTB = 255;
    WriteCmdXLCD(0x01);
    while(1){
        //PORTBbits.RB4 = 1;
       
        __delay_ms(100);
        putsXLCD("test");
        Nop();
        __delay_ms(500);
        Nop();
    }
    */
    return 1;
}