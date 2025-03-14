char txt[6];

// LCD module connections
sbit LCD_RS at RD4_bit;
sbit LCD_EN at RD5_bit;
sbit LCD_D4 at RD0_bit;
sbit LCD_D5 at RD1_bit;
sbit LCD_D6 at RD2_bit;
sbit LCD_D7 at RD3_bit;

sbit LCD_RS_Direction at TRISD4_bit;
sbit LCD_EN_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD0_bit;
sbit LCD_D5_Direction at TRISD1_bit;
sbit LCD_D6_Direction at TRISD2_bit;
sbit LCD_D7_Direction at TRISD3_bit;
// End LCD module connections


void main() {


  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;

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
    LCD_OUT(1,1,"1");
 }


   if(PORTB.RB5 == 1)

 {

   LCD_OUT(1,1,"4");  }

   if(PORTB.RB6 == 1)
 {
   LCD_OUT(1,1,"7");


   }

   PORTB.RB0=0;


 PORTB.RB1=1;
 if(PORTB.RB4 == 1){
       LCD_OUT(1,1,"2");
   }

 if(PORTB.RB5 == 1){

  LCD_OUT(1,1,"5");}


 if(PORTB.RB6 == 1){

      LCD_OUT(1,1,"8");
      }

  if(PORTB.RB7 == 1){

   LCD_OUT(1,1,"0"); }

 PORTB.RB1=0;


 PORTB.RB2=1;
 if(PORTB.RB4 == 1){

       LCD_OUT(1,1,"3");
      }
 if(PORTB.RB5 == 1){

    LCD_OUT(1,1,"6");
    }

 if(PORTB.RB6 == 1){


      LCD_OUT(1,1,"9");
      }

 PORTB.RB2=0;

  }

}