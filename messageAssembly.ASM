;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        S2 DB "**********$"		;defining message 1
	MSG2 DB "*        *$"		;defining message 2
.CODE
MAIN PROC
	
                ;main start
	MOV AX,@DATA
        MOV DS,AX       			; giving address
       
	MOV AH,9H		;displaying message 1
	LEA DX,S2
	INT 21H
	
	
	MOV AH,2H		; new line
	MOV DL,0AH
	INT 21H
	
	MOV AH,9H		;displaying message 2
	LEA DX,MSG2
	INT 21H

	MOV AH,2H		; new line
	MOV DL,0AH
	INT 21H

	MOV AH,9H		;displaying message 2
	LEA DX,MSG2
	INT 21H

	MOV AH,2H		; new line
	MOV DL,0AH
	INT 21H

	MOV AH,9H		;displaying message 2
	LEA DX,MSG2
	INT 21H

	MOV AH,2H		; new line
	MOV DL,0AH
	INT 21H

	MOV AH,9H		;displaying message 1
	LEA DX,S2
	INT 21H


	
	
	MOV AX,4C00H   		;exit dos 
        INT 21H
MAIN ENDP
END MAIN



