	
ADC_WR 	EQU 	P3.5		; ADC WR PIN
ADC_RD 	EQU 	P3.6		; ADC RD PIN
ADC_INT	EQU	P3.4		; ADC INTR PIN
ADC	EQU	P1		; ADC OUT MCU IN

DISP_1 	EQU	P3.1
DISP_2 	EQU	P3.2
DT_PORT	EQU	P2


;NUM1 equ 5000
;mov R7,#((NUM1 SHR 8) AND 255) ;R7=high byte of number
;mov R6,#(NUM1 AND 255)         ;R6=low byte of number

	ORG 	00H
	
	MOV 	P1,#11111111B   ; INITIALIZES P1 AS INPUT PORT
	MOV 	P0,#00000000B   ; INITIALIZES P0 AS OUTPUT PORT
	MOV 	P3,#00000000B   ; INITIALIZES P3 AS OUTPUT PORT
	MOV 	DPTR,#LABEL     ; LOADS THE ADDRESS OF "LABEL" TO DPTR

MAIN: 	
	MOV 	R4,#10D  	; LOADS REGISTER R4 WITH 250D
	CALL	CONVERT		; RESULT IS IN A
      	MOV 	B,#05D    	; LOAD B WITH 10D
      	DIV 	AB        	; DIVIDES THE CONTENT OF A WITH THAT IN B
      	MOV 	R6,A      	; MOVES THE QUOTIENT TO R6
      	MOV 	R7,B      	; MOVES THE REMAINDER TO R7

DLOOP:
	LCALL	DRIVE	
      	DJNZ 	R4,DLOOP 	; REPEATS THE LOOP "DLOOP" UNTIL R4=0
      	SJMP 	MAIN     	; JUMPS BACK TO THE MAIN LOOP

CONVERT:
	SETB	ADC_WR		; ADC WR PIN HIGH
	SETB	ADC_RD		; ADC RD PIN HIGH
	NOP			; NO OPERATION AS A DELAY
	CLR	ADC_WR		; ADC WR PIN LOW
	NOP			; NO OPERATION AS A DELAY
	SETB	ADC_WR		; ADC WR PIN HIGH
	JB	ADC_INT,$	; POLL FOR INTR = 0
	CLR	ADC_RD		; ADC RD PIN LOW
	NOP			; NO OPERATION AS A DELAY
	MOV	A, ADC		; READ ADC PORT IN A
	SETB	ADC_RD		; ADC RD PIN HIGH
	RET			; RETURN FROM ROUTINE

DRIVE:
	MOV	A,R6		; "1" IS MOVED TO ACCUMULATOR
	ACALL   DISPLAY 	; CALLS THE DISPLAY DATA
	SETB	DISP_1		; ACTIVATES 1ST DISPLAY
	MOV	DT_PORT ,A	; MOVES THE PATTERN  
	ACALL   DELAY    	; CALLS THE 1MS DELAY
	CLR	DISP_1		; DEACTIVATES THE 1ST DISPLAY
	MOV	A, R7		; "2" IS MOVED TO ACCUMULATOR
	SETB	DISP_2		; ACTIVATES 2ND DISPLAY
	ACALL   DISPLAY 	; CALLS THE DISPLAY DATA
	MOV	DT_PORT ,A	; MOVES THE PATTERN  
	ACALL   DELAY    	; CALLS THE 1MS DELAY
	CLR	DISP_2		; DEACTIVATES THE 2ND DISPLAY
	RET

DELAY: 
	MOV 	R0, #20H
LP2:   	MOV 	R1, #010H
LP1:   	MOV 	R2, #010H
LP3:   	DJNZ 	R2, LP3 
       	DJNZ 	R1, LP1 
	DJNZ 	R0, LP2
	RET

DISPLAY: MOVC 	A,@A+DPTR 	; CONVERTS A'S CONTENT TO CORRESPONDING DIGIT DRIVE PATTERN 
         RET

ORG 400H
LABEL: 			; LOOKUP TABLE FOR DIGITS 0 TO 9
DB 3FH, 06H, 5BH, 4FH, 66H, 6DH, 7DH, 07H, 7FH, 6FH, 0


	END