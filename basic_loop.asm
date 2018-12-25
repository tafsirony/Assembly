.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    
    MOV CX,5
    
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    L1:
    INT 21H
    LOOP L1
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
    
END MAIN
