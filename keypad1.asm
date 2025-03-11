
_keypad:

;keypad1.c,24 :: 		char keypad(){
;keypad1.c,25 :: 		do {
L_keypad0:
;keypad1.c,26 :: 		kp = 0;                                // Reset key code variable
	CLRF       _kp+0
;keypad1.c,29 :: 		do
L_keypad3:
;keypad1.c,31 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL       _Keypad_Key_Click+0
	MOVF       R0+0, 0
	MOVWF      _kp+0
;keypad1.c,32 :: 		while (!kp);
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_keypad3
;keypad1.c,34 :: 		switch (kp) {
	GOTO       L_keypad6
;keypad1.c,40 :: 		case  1: return 55; break; // 7        // Uncomment this block for keypad4x4
L_keypad8:
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,41 :: 		case  2: return 56; break; // 8
L_keypad9:
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,42 :: 		case  3: return 57; break; // 3
L_keypad10:
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,43 :: 		case  4: return 47; break; // A or /
L_keypad11:
	MOVLW      47
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,44 :: 		case  5: return 52; break; // 4
L_keypad12:
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,45 :: 		case  6: return 53; break; // 5
L_keypad13:
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,46 :: 		case  7: return 54; break; // 6
L_keypad14:
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,47 :: 		case  8: return 42; break; // B or *
L_keypad15:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,48 :: 		case  9: return 49; break; // 1
L_keypad16:
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,49 :: 		case 10: return 50; break; // 2
L_keypad17:
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,50 :: 		case 11: return 51; break; // 9
L_keypad18:
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,51 :: 		case 12: return 45; break; // C or -
L_keypad19:
	MOVLW      45
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,52 :: 		case 13: return 42; break; // *
L_keypad20:
	MOVLW      42
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,53 :: 		case 14: return 48; break; // 0
L_keypad21:
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,54 :: 		case 15: return 61; break; // # or =
L_keypad22:
	MOVLW      61
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,55 :: 		case 16: return 43; break; // D or +
L_keypad23:
	MOVLW      43
	MOVWF      R0+0
	GOTO       L_end_keypad
;keypad1.c,57 :: 		}
L_keypad6:
	MOVF       _kp+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_keypad8
	MOVF       _kp+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_keypad9
	MOVF       _kp+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_keypad10
	MOVF       _kp+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_keypad11
	MOVF       _kp+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_keypad12
	MOVF       _kp+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_keypad13
	MOVF       _kp+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_keypad14
	MOVF       _kp+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_keypad15
	MOVF       _kp+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_keypad16
	MOVF       _kp+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_keypad17
	MOVF       _kp+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_keypad18
	MOVF       _kp+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_keypad19
	MOVF       _kp+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_keypad20
	MOVF       _kp+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_keypad21
	MOVF       _kp+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_keypad22
	MOVF       _kp+0, 0
	XORLW      16
	BTFSC      STATUS+0, 2
	GOTO       L_keypad23
;keypad1.c,60 :: 		} while (1);
	GOTO       L_keypad0
;keypad1.c,61 :: 		}
L_end_keypad:
	RETURN
; end of _keypad

_main:

;keypad1.c,64 :: 		void main() {
;keypad1.c,65 :: 		cnt = 0;                                 // Reset counter
	CLRF       _cnt+0
;keypad1.c,66 :: 		Keypad_Init();                           // Initialize Keypad
	CALL       _Keypad_Init+0
;keypad1.c,67 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF       ANSEL+0
;keypad1.c,68 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;keypad1.c,69 :: 		Lcd_Init();                              // Initialize LCD
	CALL       _Lcd_Init+0
;keypad1.c,70 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad1.c,71 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad1.c,72 :: 		Lcd_Out(1, 1, ":");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_keypad1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad1.c,74 :: 		while(1){
L_main24:
;keypad1.c,75 :: 		pressed =keypad();
	CALL       _keypad+0
	MOVF       R0+0, 0
	MOVWF      _pressed+0
;keypad1.c,76 :: 		LCD_CHR_CP(pressed);
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Chr_CP_out_char+0
	CALL       _Lcd_Chr_CP+0
;keypad1.c,77 :: 		}
	GOTO       L_main24
;keypad1.c,78 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
