
_main:

;tur.c,18 :: 		void main() {
;tur.c,19 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;tur.c,20 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;tur.c,22 :: 		TRISD = 0X00;
	CLRF       TRISD+0
;tur.c,23 :: 		TRISB= 0XF0;
	MOVLW      240
	MOVWF      TRISB+0
;tur.c,24 :: 		TRISC = 0X00;
	CLRF       TRISC+0
;tur.c,25 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;tur.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;tur.c,27 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;tur.c,28 :: 		Lcd_Out(1, 1, ":");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_tur+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;tur.c,30 :: 		while(1){
L_main0:
;tur.c,32 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;tur.c,34 :: 		if(PORTB.RB4 == 1)   // test row 1
	BTFSS      PORTB+0, 4
	GOTO       L_main2
;tur.c,36 :: 		LCD_OUT(1,1,"1");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_tur+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;tur.c,37 :: 		}
L_main2:
;tur.c,38 :: 		if(PORTB.RB5 == 1)   // test row 2
	BTFSS      PORTB+0, 5
	GOTO       L_main3
;tur.c,42 :: 		LCD_OUT(1,1,"4");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_tur+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;tur.c,43 :: 		}
L_main3:
;tur.c,46 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;tur.c,49 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;tur.c,50 :: 		if(PORTB.RB4 == 1)    // test row 2
	BTFSS      PORTB+0, 4
	GOTO       L_main4
;tur.c,52 :: 		LCD_OUT(1,1,"2");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_tur+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;tur.c,53 :: 		}
L_main4:
;tur.c,54 :: 		PORTB.RB1=-0;
	BCF        PORTB+0, 1
;tur.c,56 :: 		}
	GOTO       L_main0
;tur.c,57 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
