;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        
        V2 DB 10B       ;data assigned to variables
        V3 DB 10H
        
.CODE
MAIN PROC
                ;main start
        MOV AX,@DATA
        MOV DS,AX       ; giving address


        MOV BL,1B	;valid	
        MOV V2,5D	;valid
	MOV V3,BL	;valid
        MOV CL,BL	;valid
        MOV CL,V2
        ;MOV v2,v3	;invalid moveing

        MOV AX,4C00H   ;exit dos 
        INT 21H
MAIN ENDP
END MAIN



