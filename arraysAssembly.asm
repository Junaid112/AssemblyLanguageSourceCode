;Author
;JUNAID AHMED GHAURI

.MODEL SMALL
.STACK 100H
.DATA
        AR1 Dw 200h,201h,202h		;defining array1
	AR2 DB "HELLO",15d,0Bh,"A"	;defining array2
.CODE
MAIN PROC
                ;main start
        MOV AX,@DATA
        MOV DS,AX       ; giving address


        MOV BX,[AR1]		; accesing array1 members
        MOV BX,[AR1+2]		
        MOV BX,[AR1+4]
        MOV CL,[AR2]		; accesing array2 members one by one
        MOV CL,[AR2+1]
        MOV CL,[AR2+2]
        MOV cL,[AR2+3]
	MOV CL,[AR2+4]
        MOV CL,[AR2+5]
        MOV cL,[AR2+6]
	MOV cL,[AR2+7]

        MOV AX,4C00H   ;exit dos 
        INT 21H
MAIN ENDP
END MAIN



           