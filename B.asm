
_initialization:

;B.c,1 :: 		void initialization(){
;B.c,2 :: 		TRISA = 0x1f;  //setting register ports A as input
	MOVLW      31
	MOVWF      TRISA+0
;B.c,3 :: 		TRISB = 0x00;  //setting register ports B as output
	CLRF       TRISB+0
;B.c,5 :: 		}
L_end_initialization:
	RETURN
; end of _initialization

_main:

;B.c,9 :: 		void main() {
;B.c,10 :: 		initialization();
	CALL       _initialization+0
;B.c,11 :: 		do{
L_main0:
;B.c,12 :: 		if(PORTA.F0 =1){     // Testing if the switch is ON
	BSF        PORTA+0, 0
	BTFSS      PORTA+0, 0
	GOTO       L_main3
;B.c,14 :: 		PORTB = 0b01111110;
	MOVLW      126
	MOVWF      PORTB+0
;B.c,15 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;B.c,16 :: 		PORTB = 0b00110000;
	MOVLW      48
	MOVWF      PORTB+0
;B.c,17 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;B.c,18 :: 		PORTB = 0b01101101;
	MOVLW      109
	MOVWF      PORTB+0
;B.c,19 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;B.c,20 :: 		}
	GOTO       L_main7
L_main3:
;B.c,21 :: 		else if(PORTA.F1 = 1){
	BSF        PORTA+0, 1
	BTFSS      PORTA+0, 1
	GOTO       L_main8
;B.c,22 :: 		PORTB = 0b1111001;
	MOVLW      121
	MOVWF      PORTB+0
;B.c,23 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;B.c,24 :: 		PORTB = 0b0001110;
	MOVLW      14
	MOVWF      PORTB+0
;B.c,25 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;B.c,26 :: 		PORTB = 0b1011011;
	MOVLW      91
	MOVWF      PORTB+0
;B.c,27 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;B.c,28 :: 		}
	GOTO       L_main12
L_main8:
;B.c,29 :: 		else if(PORTA.F2=1){
	BSF        PORTA+0, 2
	BTFSS      PORTA+0, 2
	GOTO       L_main13
;B.c,30 :: 		PORTB = 0b1011111;
	MOVLW      95
	MOVWF      PORTB+0
;B.c,31 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;B.c,32 :: 		PORTB = 0b1110000;
	MOVLW      112
	MOVWF      PORTB+0
;B.c,33 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;B.c,34 :: 		PORTB = 0b1111111;
	MOVLW      127
	MOVWF      PORTB+0
;B.c,35 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;B.c,36 :: 		}
	GOTO       L_main17
L_main13:
;B.c,37 :: 		else if(PORTA.F3 = 1){
	BSF        PORTA+0, 3
	BTFSS      PORTA+0, 3
	GOTO       L_main18
;B.c,38 :: 		PORTB = 0b1110011;
	MOVLW      115
	MOVWF      PORTB+0
;B.c,39 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;B.c,40 :: 		PORTB = 0b1111111;
	MOVLW      127
	MOVWF      PORTB+0
;B.c,41 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;B.c,42 :: 		PORTB = 0b1110000;
	MOVLW      112
	MOVWF      PORTB+0
;B.c,43 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;B.c,44 :: 		PORTB = 0b1011111;
	MOVLW      95
	MOVWF      PORTB+0
;B.c,45 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;B.c,46 :: 		PORTB = 0b1011011;
	MOVLW      91
	MOVWF      PORTB+0
;B.c,47 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;B.c,48 :: 		PORTB = 0b0001110;
	MOVLW      14
	MOVWF      PORTB+0
;B.c,49 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
	NOP
;B.c,50 :: 		PORTB = 0b1111001;
	MOVLW      121
	MOVWF      PORTB+0
;B.c,51 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
	NOP
;B.c,52 :: 		PORTB = 0b1101101;
	MOVLW      109
	MOVWF      PORTB+0
;B.c,53 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
	NOP
;B.c,54 :: 		PORTB = 0b0110000;
	MOVLW      48
	MOVWF      PORTB+0
;B.c,55 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;B.c,56 :: 		PORTB = 0b1111110;
	MOVLW      126
	MOVWF      PORTB+0
;B.c,57 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
	NOP
;B.c,58 :: 		}
	GOTO       L_main29
L_main18:
;B.c,59 :: 		else if(PORTA.F4 = 1){
	BSF        PORTA+0, 4
	BTFSS      PORTA+0, 4
	GOTO       L_main30
;B.c,60 :: 		PORTB = 0b1111110;
	MOVLW      126
	MOVWF      PORTB+0
;B.c,61 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
	NOP
;B.c,62 :: 		PORTB = 0b0110000;
	MOVLW      48
	MOVWF      PORTB+0
;B.c,63 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
	NOP
;B.c,64 :: 		PORTB = 0b1101101;
	MOVLW      109
	MOVWF      PORTB+0
;B.c,65 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
	NOP
	NOP
;B.c,66 :: 		PORTB = 0b1111001;
	MOVLW      121
	MOVWF      PORTB+0
;B.c,67 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
	NOP
;B.c,68 :: 		PORTB = 0b0001110;
	MOVLW      14
	MOVWF      PORTB+0
;B.c,69 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
	NOP
;B.c,70 :: 		PORTB = 0b1011011;
	MOVLW      91
	MOVWF      PORTB+0
;B.c,71 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
	NOP
;B.c,72 :: 		PORTB = 0b1011111;
	MOVLW      95
	MOVWF      PORTB+0
;B.c,73 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
	NOP
;B.c,74 :: 		PORTB = 0b1110000;
	MOVLW      112
	MOVWF      PORTB+0
;B.c,75 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
	NOP
;B.c,76 :: 		PORTB = 0b1111111;
	MOVLW      127
	MOVWF      PORTB+0
;B.c,77 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
	NOP
;B.c,78 :: 		PORTB = 0b1110011;
	MOVLW      115
	MOVWF      PORTB+0
;B.c,79 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
	NOP
;B.c,81 :: 		}
	GOTO       L_main41
L_main30:
;B.c,83 :: 		PORTB = 0b0000000;
	CLRF       PORTB+0
;B.c,84 :: 		}
L_main41:
L_main29:
L_main17:
L_main12:
L_main7:
;B.c,85 :: 		}while(1);
	GOTO       L_main0
;B.c,86 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
