
_main:

;keypad2.c,23 :: 		void main() {
;keypad2.c,26 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;keypad2.c,27 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;keypad2.c,28 :: 		TRISA = 0XFF;
	MOVLW      255
	MOVWF      TRISA+0
;keypad2.c,29 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;keypad2.c,30 :: 		TRISB= 0XF0;
	MOVLW      240
	MOVWF      TRISB+0
;keypad2.c,31 :: 		TRISC = 0X00;
	CLRF       TRISC+0
;keypad2.c,32 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;keypad2.c,33 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad2.c,34 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad2.c,35 :: 		Lcd_Out(1, 1, ":");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,37 :: 		while(1){
L_main0:
;keypad2.c,38 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;keypad2.c,40 :: 		if(PORTB.RB4 == 1)
	BTFSS      PORTB+0, 4
	GOTO       L_main2
;keypad2.c,43 :: 		}
L_main2:
;keypad2.c,46 :: 		if(PORTB.RB5 == 1)
	BTFSS      PORTB+0, 5
	GOTO       L_main3
;keypad2.c,50 :: 		LCD_OUT(1,2,"FOUR");  }
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main3:
;keypad2.c,52 :: 		if(PORTB.RB6 == 1)
	BTFSS      PORTB+0, 6
	GOTO       L_main4
;keypad2.c,54 :: 		LCD_OUT(1,2,"SEVEN");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,57 :: 		}
L_main4:
;keypad2.c,59 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;keypad2.c,62 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;keypad2.c,63 :: 		if(PORTB.RB4 == 1){
	BTFSS      PORTB+0, 4
	GOTO       L_main5
;keypad2.c,65 :: 		}
L_main5:
;keypad2.c,67 :: 		if(PORTB.RB5 == 1){
	BTFSS      PORTB+0, 5
	GOTO       L_main6
;keypad2.c,69 :: 		LCD_OUT(1,2,"FIVE");}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main6:
;keypad2.c,72 :: 		if(PORTB.RB6 == 1){
	BTFSS      PORTB+0, 6
	GOTO       L_main7
;keypad2.c,74 :: 		LCD_OUT(1,2,"EIGHT");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,75 :: 		}
L_main7:
;keypad2.c,77 :: 		if(PORTB.RB7 == 1){
	BTFSS      PORTB+0, 7
	GOTO       L_main8
;keypad2.c,79 :: 		LCD_OUT(1,2,"ZERO"); }
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main8:
;keypad2.c,81 :: 		PORTB.RB1=0;
	BCF        PORTB+0, 1
;keypad2.c,84 :: 		PORTB.RB2=1;
	BSF        PORTB+0, 2
;keypad2.c,85 :: 		if(PORTB.RB4 == 1){
	BTFSS      PORTB+0, 4
	GOTO       L_main9
;keypad2.c,88 :: 		}
L_main9:
;keypad2.c,89 :: 		if(PORTB.RB5 == 1){
	BTFSS      PORTB+0, 5
	GOTO       L_main10
;keypad2.c,91 :: 		LCD_OUT(1,2,"SIX");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,92 :: 		}
L_main10:
;keypad2.c,94 :: 		if(PORTB.RB6 == 1){
	BTFSS      PORTB+0, 6
	GOTO       L_main11
;keypad2.c,96 :: 		PORTC = 0X67;
	MOVLW      103
	MOVWF      PORTC+0
;keypad2.c,97 :: 		LCD_OUT(1,2,"NINE");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,98 :: 		}
L_main11:
;keypad2.c,100 :: 		PORTB.RB2=0;
	BCF        PORTB+0, 2
;keypad2.c,102 :: 		}
	GOTO       L_main0
;keypad2.c,104 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
