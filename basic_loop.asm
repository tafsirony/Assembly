.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
    
    MOV CX,9
    
    MOV AH,2
    MOV DL,49
    INT 21H
    
    L1:
    INT 21H
    INC DL
    LOOP L1
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
    
END MAIN
