unsigned short kp, cnt, pressed = 0;
char txt[6];

// Keypad module connections
char  keypadPort at PORTB;
// End Keypad module connections

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

char keypad(){
do {
    kp = 0;                                // Reset key code variable

    // Wait for key to be pressed and released
    do
      // kp = Keypad_Key_Press();          // Store key code in kp variable
      kp = Keypad_Key_Click();             // Store key code in kp variable
    while (!kp);
   // Prepare value for output, transform key to it's ASCII value
    switch (kp) {
      //case 10: kp = 42; break;  // '*'   // Uncomment this block for keypad4x3
      //case 11: kp = 48; break;  // '0'
      //case 12: kp = 35; break;  // '#'
      //default: kp += 48;

      case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
      case  2: return 56; break; // 8
      case  3: return 57; break; // 3
      case  4: return 47; break; // A or /
      case  5: return 52; break; // 4
      case  6: return 53; break; // 5
      case  7: return 54; break; // 6
      case  8: return 42; break; // B or *
      case  9: return 49; break; // 1
      case 10: return 50; break; // 2
      case 11: return 51; break; // 9
      case 12: return 45; break; // C or -
      case 13: return 42; break; // *
      case 14: return 48; break; // 0
      case 15: return 61; break; // # or =
      case 16: return 43; break; // D or +

    }

                    // Display counter value on LCD
  } while (1);
}


void main() {
  cnt = 0;                                 // Reset counter
  Keypad_Init();                           // Initialize Keypad
  ANSEL  = 0;                              // Configure AN pins as digital I/O
  ANSELH = 0;
  Lcd_Init();                              // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);                     // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
  Lcd_Out(1, 1, ":");

  while(1){
     pressed =keypad();
     LCD_CHR_CP(pressed);
  }
}