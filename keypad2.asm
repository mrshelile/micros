
_main:

;keypad2.c,20 :: 		void main() {
;keypad2.c,23 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;keypad2.c,24 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;keypad2.c,26 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;keypad2.c,27 :: 		TRISB= 0XF0;
	MOVLW      240
	MOVWF      TRISB+0
;keypad2.c,28 :: 		TRISC = 0X00;
	CLRF       TRISC+0
;keypad2.c,29 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;keypad2.c,30 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad2.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad2.c,32 :: 		Lcd_Out(1, 1, ":");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,34 :: 		while(1){
L_main0:
;keypad2.c,36 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;keypad2.c,38 :: 		if(PORTB.RB4 == 1)
	BTFSS      PORTB+0, 4
	GOTO       L_main2
;keypad2.c,40 :: 		LCD_OUT(1,1,"1");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,41 :: 		}
L_main2:
;keypad2.c,44 :: 		if(PORTB.RB5 == 1)
	BTFSS      PORTB+0, 5
	GOTO       L_main3
;keypad2.c,48 :: 		LCD_OUT(1,1,"4");  }
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main3:
;keypad2.c,50 :: 		if(PORTB.RB6 == 1)
	BTFSS      PORTB+0, 6
	GOTO       L_main4
;keypad2.c,52 :: 		LCD_OUT(1,1,"7");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,55 :: 		}
L_main4:
;keypad2.c,57 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;keypad2.c,60 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;keypad2.c,61 :: 		if(PORTB.RB4 == 1){
	BTFSS      PORTB+0, 4
	GOTO       L_main5
;keypad2.c,62 :: 		LCD_OUT(1,1,"2");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,63 :: 		}
L_main5:
;keypad2.c,65 :: 		if(PORTB.RB5 == 1){
	BTFSS      PORTB+0, 5
	GOTO       L_main6
;keypad2.c,67 :: 		LCD_OUT(1,1,"5");}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main6:
;keypad2.c,70 :: 		if(PORTB.RB6 == 1){
	BTFSS      PORTB+0, 6
	GOTO       L_main7
;keypad2.c,72 :: 		LCD_OUT(1,1,"8");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,73 :: 		}
L_main7:
;keypad2.c,75 :: 		if(PORTB.RB7 == 1){
	BTFSS      PORTB+0, 7
	GOTO       L_main8
;keypad2.c,77 :: 		LCD_OUT(1,1,"0"); }
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr8_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main8:
;keypad2.c,79 :: 		PORTB.RB1=0;
	BCF        PORTB+0, 1
;keypad2.c,82 :: 		PORTB.RB2=1;
	BSF        PORTB+0, 2
;keypad2.c,83 :: 		if(PORTB.RB4 == 1){
	BTFSS      PORTB+0, 4
	GOTO       L_main9
;keypad2.c,85 :: 		LCD_OUT(1,1,"3");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr9_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,86 :: 		}
L_main9:
;keypad2.c,87 :: 		if(PORTB.RB5 == 1){
	BTFSS      PORTB+0, 5
	GOTO       L_main10
;keypad2.c,89 :: 		LCD_OUT(1,1,"6");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr10_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,90 :: 		}
L_main10:
;keypad2.c,92 :: 		if(PORTB.RB6 == 1){
	BTFSS      PORTB+0, 6
	GOTO       L_main11
;keypad2.c,95 :: 		LCD_OUT(1,1,"9");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr11_keypad2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad2.c,96 :: 		}
L_main11:
;keypad2.c,98 :: 		PORTB.RB2=0;
	BCF        PORTB+0, 2
;keypad2.c,100 :: 		}
	GOTO       L_main0
;keypad2.c,102 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
