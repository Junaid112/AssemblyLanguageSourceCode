;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        MSG DB "Enter FIRST number 0-9:$"		;defining message 1
	MSG2 DB "Enter SECOND number 0-$"			;defining message 2
	MSG3 DB ": $"		;defining message 3
	MSG4 DB "The sum is $"		;defining message 4
	
	
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

	MOV AH,2H			;new line
	MOV DL,0AH
	INT 21H

	MOV CL,09D			;finding range of second input
	MOV CH,BL
	SUB CH,48D
	SUB CL,CH
	ADD CL,48D			;change to chracter
	

	MOV AH,9H			;displaying message 2
	LEA DX,MSG2
	INT 21H

	MOV AH,2H			;displaying  num of range
	MOV DL,CL
	INT 21H

	MOV AH,9H			;displaying message 3
	LEA DX,MSG3
	INT 21H

	MOV AH,1H			;getting input 2nd num
	INT 21H
	MOV BH,AL

	MOV AH,2H			;new line
	MOV DL,0AH
	INT 21H

	ADD BL,BH			;convert in to digit from character
	SUB BL,48D

	
	MOV AH,9H			;displaying message 4
	LEA DX,MSG4
	INT 21H

	MOV AH,2H			;displaying result
	MOV DL,BL
	INT 21H

		
	MOV AX,4C00H 		 	;exit dos 
        INT 21H
MAIN ENDP
END MAIN



