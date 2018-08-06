;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100

.DATA
	S1 DB "Enter any Alphabet :$"
	S2 DB 0DH,0AH,"WRONG INPUT..! $"
.CODE
MAIN PROC
	MOV AX,@DATA
	MOV DS,AX
	
        MOV AH,09H
	MOV DX,OFFSET S1
	INT 21H
	
	MOV AH,01H
	INT 21H

	MOV BH,AL
        CMP BH,'Z'
        JG E1
	
    	CMP BH,'A'
        JL E1

L1:
        CMP BH,'Z'; terminate when greater than z
        JG E2
	 
        
        
	
	MOV AH,02H
        MOV DL,BH
	INT 21H

        INC BH
       
        JMP L1
E1: 
	

        MOV AH,9H
        MOV DX,OFFSET S2 
	INT 21H
 
E2:      MOV AH,4CH
        INT 21H
MAIN ENDP
END MAIN
