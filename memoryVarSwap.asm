;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H

.DATA
        V1 DW 2004H		;defining VARIABLE

	V2 DW 0002H		;defining VARIABLE	
.CODE
MAIN PROC
	
                ;main start
	MOV AX,@DATA
        	MOV DS,AX       		; giving memory address of data
	

          
	MOV AX,V1				;mov first value
	MOV BX,V2				;mov 2nd value
	
	ADD AX,V2				;add both values
	
	
	MOV AX,4C00H   				;exit dos 
        INT 21H

MAIN ENDP
END MAIN



