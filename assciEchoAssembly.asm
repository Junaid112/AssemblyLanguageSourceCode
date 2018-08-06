;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100

.DATA
	
	
	S1 DB 0DH,0AH,"Press Any Key & I WILL SHOW its ASCII VALUE :  $"
	S2 DB 0DH,0AH,"The ASCII value is:  $"
	S3 DB "1$"
	S4 DB "0$"
	

.CODE
MAIN PROC
	MOV AX,@DATA		;giving segment 
	MOV DS,AX	
	
        MOV AH,09H
	MOV DX,OFFSET S1	;prompt user 
	INT 21H

	
	MOV AH,01H		;take input
	INT 21H

	MOV BH,00H
	MOV BL,AL
	
	MOV CX,8		;loop counter
	
	MOV AH,09H
	MOV DX,OFFSET S2	;MESSAGE
	INT 21H

TOP:
	ROL BL,1
	JNC NOTONE
	
	MOV AH,09H
	MOV DX,OFFSET S3	;DISPLAY 1
	INT 21H
	JMP ENL


NOTONE:	
	MOV AH,09H
	MOV DX,OFFSET S4	;DISPLAY 0
	INT 21H
ENL:	
	LOOP TOP		;loop to top
	
	MOV AH,4CH		;exit
        INT 21H
MAIN ENDP			;end procedure
END MAIN			;end main
