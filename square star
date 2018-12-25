.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER  ANY VALUE(1-9):$"    
VAR DB ?
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    
    SUB AL,48
    
    MOV CX,0
    MOV CL,AL
    
    MOV BX,0
    MOV BL,AL
    
    MOV VAR,AL
    
    MOV AH,2  
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H
    
    L1:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    
    DEC BL
    CMP BL,0
    JE EXIT
    JMP L1
    
    
    
    EXIT:
    MOV AH,2  
    MOV DL,0AH
    INT 21H
    MOV DL,0DH
    INT 21H 
    
    MOV BL,VAR
    LOOP L1
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
    
END MAIN
