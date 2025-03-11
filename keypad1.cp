#line 1 "C:/Users/Administrator/Documents/micros/keypad1.c"
unsigned short kp, cnt, pressed = 0;
char txt[6];


char keypadPort at PORTB;



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


char keypad(){
do {
 kp = 0;


 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {





 case 1: return 55; break;
 case 2: return 56; break;
 case 3: return 57; break;
 case 4: return 47; break;
 case 5: return 52; break;
 case 6: return 53; break;
 case 7: return 54; break;
 case 8: return 42; break;
 case 9: return 49; break;
 case 10: return 50; break;
 case 11: return 51; break;
 case 12: return 45; break;
 case 13: return 42; break;
 case 14: return 48; break;
 case 15: return 61; break;
 case 16: return 43; break;

 }


 } while (1);
}


void main() {
 cnt = 0;
 Keypad_Init();
 ANSEL = 0;
 ANSELH = 0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1, 1, ":");

 while(1){
 pressed =keypad();
 LCD_CHR_CP(pressed);
 }
}
