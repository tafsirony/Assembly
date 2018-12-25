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
   
   CMP BL,'A'
   JGE L1 
   
   JMP EXIT
   
   L1:
   CMP BL,'Z'
   JLE PRINT
   
   JMP EXIT
   
   PRINT:
   MOV AH,2
   MOV DL,BL
   INT 21H
     
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    
    
END MAIN
