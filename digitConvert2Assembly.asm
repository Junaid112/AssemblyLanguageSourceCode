;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        MSG DB "Enter two number:$"		;defining message 1
	MSG2 DB "The sum of $"		;defining message 2
	MSG3 DB "and $"			;defining message 3
	MSG4 DB "is $"			;defining message 4
.CODE
MAIN PROC
	
                					;main start
	MOV AX,@DATA
        	MOV DS,AX       			; giving address
       
	MOV AH,9H			;displaying message 1
	LEA DX,MSG
	INT 21H
	
	MOV AH,1H			;getting input 1st num
	INT 21H
	MOV BL,AL

	MOV AH,1H			;getting input 2nd num
	INT 21H
	MOV BH,AL

	
	
	MOV AH,2H			;new line
	MOV DL,0AH
	INT 21H
	
	MOV AH,9H			;displaying message 2
	LEA DX,MSG2
	INT 21H

	MOV AH,2H			;displaying 1st num
	MOV DL,BL
	INT 21H

	MOV AH,9H			;displaying message 3
	LEA DX,MSG3
	INT 21H

	MOV AH,2H			;displaying 2nd num
	MOV DL,BH
	INT 21H

	MOV AH,9H			;displaying message 4
	LEA DX,MSG4
	INT 21H

	ADD BL,BH			;convert in to digit from character
	SUB BL,48D

	MOV AH,2H			;displaying result
	MOV DL,BL
	INT 21H
	
	MOV AX,4C00H 		 	;exit dos 
        INT 21H
MAIN ENDP
END MAIN



