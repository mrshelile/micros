char txt[6];


// End Keypad module connections

// LCD module connections
sbit LCD_RS at RA4_bit;
sbit LCD_EN at RA5_bit;
sbit LCD_D4 at RA0_bit;
sbit LCD_D5 at RA1_bit;
sbit LCD_D6 at RA2_bit;
sbit LCD_D7 at RA3_bit;

sbit LCD_RS_Direction at TRISA4_bit;
sbit LCD_EN_Direction at TRISA5_bit;
sbit LCD_D4_Direction at TRISA0_bit;
sbit LCD_D5_Direction at TRISA1_bit;
sbit LCD_D6_Direction at TRISA2_bit;
sbit LCD_D7_Direction at TRISA3_bit;
// End LCD module connections


void main() {


  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  TRISA = 0XFF;
  TRISD = 0X00;
  TRISB= 0XF0;
  TRISC = 0X00;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  Lcd_Out(1, 1, ":");

  while(1){
PORTB.RB0=1;

 if(PORTB.RB4 == 1)
 {
     
 }


   if(PORTB.RB5 == 1)

 {

   LCD_OUT(1,2,"FOUR");  }

   if(PORTB.RB6 == 1)
 {
   LCD_OUT(1,2,"SEVEN");


   }

   PORTB.RB0=0;


 PORTB.RB1=1;
 if(PORTB.RB4 == 1){

   }

 if(PORTB.RB5 == 1){

  LCD_OUT(1,2,"FIVE");}


 if(PORTB.RB6 == 1){

      LCD_OUT(1,2,"EIGHT");
      }

  if(PORTB.RB7 == 1){

   LCD_OUT(1,2,"ZERO"); }

 PORTB.RB1=0;


 PORTB.RB2=1;
 if(PORTB.RB4 == 1){


      }
 if(PORTB.RB5 == 1){

    LCD_OUT(1,2,"SIX");
    }

 if(PORTB.RB6 == 1){

     PORTC = 0X67;
      LCD_OUT(1,2,"NINE");
      }

 PORTB.RB2=0;

  }

}
