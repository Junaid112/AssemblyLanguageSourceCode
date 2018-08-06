;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        MSG DB "Enter FIRST number:$"		;defining message 1
	MSG2 DB "Enter SECOND number:$"		;defining message 2
	MSG3 DB "The sum is: $"			;defining message 3
	N1 DB 00D				;defining i byte variable
	N2 DB 00D 				;defining i byte variable
	
	
	
	
.CODE
MAIN PROC
	
                					;main start
	MOV AX,@DATA
        	MOV DS,AX       			; giving address
       
	MOV AH,9H					;displaying message 1
	LEA DX,MSG
	INT 21H
	
	MOV AH,1H					;getting input 1st DIGIT
	INT 21H
	MOV BL,AL
	SUB BL,48D					;change in to decimal
	MOV N1,BL
	MOV BL,0D


	MOV AH,1H					;getting input 2ND DIGIT
	INT 21H
	MOV BH,AL
	SUB BH,48D					;change in to decimal	

		

	

	MOV AH,2H			;new line
	MOV DL,0AH
	INT 21H

	MOV AH,9H			;displaying message 2
	LEA DX,MSG2
	INT 21H
	
	MOV AH,1H			;getting input 1st DIGIT
	INT 21H
	MOV CL,AL
	SUB CL,48D			;change in to decimal
	MOV N2,CL
	MOV CL,00D

	MOV AH,1H			;getting input 2ND DIGIT
	INT 21H
	MOV CH,AL
	SUB CH,48D			;change in to decimal

	ADD BH,CH			;adding first digits			
	MOV BL,BH
	MOV BH,00D
	MOV AX,BX			
	MOV BH,10D			;divide nd find remainder and quotient
	DIV BH
	
	MOV BL,AH			;move remainder in bl	
	ADD AL,N1			;add quotient as carry int 2nd digit	
	ADD AL,N2
	MOV BH,AL
	
	MOV AH,2H			;new line
	MOV DL,0AH
	INT 21H

	
	ADD BH,48D			;convert in to character
	MOV AH,2H			;displaying 
	MOV DL,BH
	INT 21H
	ADD BL,48D			;convert in to character
	MOV AH,2H			;displaying 
	MOV DL,BL
	INT 21H

	
	MOV AX,4C00H 		 	;exit dos 
        INT 21H
MAIN ENDP
END MAIN



