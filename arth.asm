
.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 14H
    NUM2 DB 05H

    SUM  DB ?
    DIFF DB ?
    PROD DW ?
    QUOT DB ?
    REM  DB ?

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; ADDITION
    MOV AL, NUM1
    ADD AL, NUM2
    MOV SUM, AL

    ; SUBTRACTION
    MOV AL, NUM1
    SUB AL, NUM2
    MOV DIFF, AL

    ; MULTIPLICATION
    MOV AL, NUM1
    MOV BL, NUM2
    MUL BL
    MOV PROD, AX

    ; DIVISION
    MOV AX, 0000H
    MOV AL, NUM1
    MOV BL, NUM2
    DIV BL
    MOV QUOT, AL
    MOV REM, AH

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
