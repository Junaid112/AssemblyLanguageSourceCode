;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        MSG DB "character input (lower case): $"		;defining message string
	
.CODE
MAIN PROC
	
                ;main start
	MOV AX,@DATA
        	MOV DS,AX       		; giving memory address of data
       
	MOV AH,9H		;displaying message 1
	LEA DX,MSG			
	INT 21H
	
	MOV AH,1H		;input character
	INT 21H
	MOV BL,AL		;saving in another register for prevent losing

	MOV AH,2H		;next line
	MOV DL,0AH
	INT 21H
	
	MOV AH,2H		;giving tab
	MOV DX,09H
	INT 21H

	MOV AH,2H		;displaying value bl
	MOV DL,BL
	INT 21H

	MOV AH,2H		;carage return
	MOV DX,0DH
	INT 21H

	MOV AH,1H
	INT 21H
	MOV BL,AL

	MOV AH,2H		;new line
	MOV DL,0AH
	INT 21H

	SUB BL,20H		; convertion to uper case

	MOV AH,2H		;displaying converted value
	MOV DL,BL
	INT 21H
	
	
	MOV AX,4C00H   ;exit dos 
        	INT 21H
MAIN ENDP
END MAIN



