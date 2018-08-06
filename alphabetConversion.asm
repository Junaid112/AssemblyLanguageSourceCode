;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100

.DATA
	S1 DB "Press any an Alphabet :$"
	S2 DB 0DH,0AH,"you input wrong..!  $"
	S3 DB 0DH,0AH,"After Conversion:  $"

.CODE
MAIN PROC
	MOV AX,@DATA	;giving segment 
	MOV DS,AX	
	
        MOV AH,09H
	MOV DX,OFFSET S1	;prompt user 
	INT 21H
	
	MOV AH,01H		;take input
	INT 21H
	MOV BL,AL
	MOV BH,00H	


	CMP BL,'a'		
	JL CAPALPHA		;jump if not small letter
	CMP BL,'z'	
	JLE ALPHATOCAPA		;small letter so jump convertng body

	CMP BL,'z'		; check for wrong input
	JG WRONG
	

CAPALPHA:
	CMP BL,'A'		;CHEK FOR alphabet
	JL WRONG	
	CMP BL,'Z'
	JLE ALPHATOa		;capital letter so jump convertng body
	CMP BL,'Z'		; check for wrong input
	JG WRONG

ALPHATOCAPA:			;convert to capital
	SUB BL,20H
	 MOV AH,09H
	 MOV DX,OFFSET S3	;NEW LINE FOR DISPLAY AFTER CONVERSION
	 INT 21H
		
	 MOV AH,02H
	 MOV DL,BL		;DISPLAY AFTER CONVERSION
	 INT 21H
	 JMP ATEND	


ALPHATOa: 			;convert to small
	ADD BL,20H
	
	
	 MOV AH,09H
	 MOV DX,OFFSET S3	;NEW LINE FOR DISPLAY AFTER CONVERSION
	 INT 21H

	MOV AH,02H
	MOV DL,BL		;DISPLAY AFTER CONVERSION
	INT 21H
	JMP ATEND


WRONG:	MOV AH,09H
	MOV DX,OFFSET S2	;WRONG INPUT
	INT 21H

ATEND:	
	MOV AH,4CH		;exit
        INT 21H
MAIN ENDP			;end procedure
END MAIN			;end main
