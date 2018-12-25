.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER INPUT $" 
MSG2 DB "TOTAL $" 

VAR DB ?
.CODE

MAIN PROC
    MOV AH,1
    INT 21H 
    
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    INT 21H
    
    MOV AH,2
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    CMP BL,BH
    JG L1
    
    CMP BH,CL
    JG L3  
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    L1:
    CMP BL,CL
    JG L2 
    MOV AH,2
    MOV DL,CL
    INT 21H 
    
    JMP EXIT
    
    L2:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    JMP EXIT
    
    L3:
    MOV AH,2
    MOV DL,BH
     
    
    JMP EXIT
    
     
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
    
END MAIN
