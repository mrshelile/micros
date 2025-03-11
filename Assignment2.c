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

  void LCD_CLEAR(){
 LCD_init();
 lcd_cmd(_LCD_CLEAR);
 LCD_cmd(_LCD_CURSOR_OFF);
}
void checkToilet1(){
     if( PORTA.RA0 ==0&& PORTA.RA1 == 1 && PORTA.RA2 == 0){
       LCD_CLEAR();
        LCD_OUT(1,2 ," T1  AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
          PORTC = 0x4F;
          LCD_CLEAR();
     }
     if( PORTA.RA0 ==0 && PORTA.RA1 == 0 && PORTA.RA2 == 1){
    LCD_CLEAR();
        LCD_OUT(1,2," T1  AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
          PORTC = 0x5B;
          LCD_CLEAR();
     }
       if( PORTA.RA0 ==0&& PORTA.RA1 == 1 && PORTA.RA2 == 1){
      LCD_CLEAR();
        LCD_OUT(1,2," T1 AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
          PORTC = 0x5B;
          LCD_CLEAR();
     }
      if( PORTA.RA0 ==0 && PORTA.RA1 == 0 && PORTA.RA2 == 0) {
     LCD_CLEAR();
        LCD_OUT(1,2," T1 AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
          PORTC = 0x5B;
        DELAY_MS(50);
          PORTC = 0x4F;
          LCD_CLEAR();
     }
     if ( PORTA.RA0 ==1){
      LCD_CLEAR();
              LCD_OUT(1,2," T1 UNAVAILABLE");
        }
     }
     
   void checkToilet2(){
   
     if( PORTA.RA0 ==1 && PORTA.RA1 == 0 && PORTA.RA2 == 0){
     LCD_CLEAR();
        LCD_OUT(1,2 ," T2 AVAILABLE");
        PORTC =  0x5B;
         DELAY_MS(50);
          PORTC = 0x4F;

     }
    if( PORTA.RA0 ==0 && PORTA.RA1 == 0 && PORTA.RA2 == 1){
    LCD_CLEAR();
        LCD_OUT(1,2," T2 AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
        PORTC = 0x5B;

     }
      if( PORTA.RA0 ==1 && PORTA.RA1 == 0 && PORTA.RA2 == 1){
      LCD_CLEAR();
        LCD_OUT(1,2," T2 AVAILABLE");
        PORTC = 0x5B;


     }
     if( PORTA.RA0 ==0 && PORTA.RA1 == 0 && PORTA.RA2 == 0){
     LCD_CLEAR();
        LCD_OUT(1,2," T2 AVAILABLE");
        PORTC =  0x06;
        DELAY_MS(50);
          PORTC = 0x5B;
          DELAY_MS(50);
            PORTC = 0x4F;

     }
     if(PORTA.RA1 == 1)
     {
      LCD_CLEAR();
              LCD_OUT(1,2," T2 UNAVAILABLE");
        }
     }
     
      void checkToilet3(){
     if(  PORTA.RA2 == 0){
     LCD_CLEAR();
        LCD_OUT(1,2," T3 AVAILABLE");
        PORTC =  0x4F;

     }

     
     if (PORTA.RA2 == 1){
              LCD_CLEAR();
              LCD_OUT(1,2," T3 UNAVAILABLE");
        }
  }




void main() {
ANSEL = ANSELH = 0X00;
TRISA = 0XFF;
TRISD = 0X00;
TRISB= 0XF0;
TRISC = 0X00;
while(1){

     
PORTB.RB0=1;

 if(PORTB.RB4 == 1)
 {    LCD_CLEAR();
      checkToilet1();

     }


   if(PORTB.RB5 == 1)

 {  LCD_CLEAR();
   PORTC= 0X66;
   LCD_OUT(1,2,"FOUR");  }

   if(PORTB.RB6 == 1)
 {  LCD_CLEAR();
   PORTC= 0X07;
   LCD_OUT(1,2,"SEVEN");


   }

   PORTB.RB0=0;


 PORTB.RB1=1;
 if(PORTB.RB4 == 1){
   LCD_CLEAR();
   checkToilet2();
   }

 if(PORTB.RB5 == 1){
 LCD_CLEAR();
 PORTC = 0X6D;
  LCD_OUT(1,2,"FIVE");}


 if(PORTB.RB6 == 1){
     LCD_CLEAR();
     PORTC= 0X7F;
      LCD_OUT(1,2,"EIGHT");
      }

  if(PORTB.RB7 == 1){
  LCD_CLEAR();
   PORTC = 0X3F;
   LCD_OUT(1,2,"ZERO"); }

 PORTB.RB1=0;


 PORTB.RB2=1;
 if(PORTB.RB4 == 1){
     LCD_CLEAR();
    checkToilet3();

      }
 if(PORTB.RB5 == 1){
    LCD_CLEAR();
   PORTC = 0X7D;
    LCD_OUT(1,2,"SIX");
    }

 if(PORTB.RB6 == 1){
      LCD_CLEAR();
     PORTC = 0X67;
      LCD_OUT(1,2,"NINE");
      }

 PORTB.RB2=0;

}

}