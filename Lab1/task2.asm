;-------------------------------------------------
;Task2
;-------------------------------------------------
CLO
	MOV AL,5
	CMP AL,3
	JNZ Else
	INC AL
	JMP Exit
Else:
	ADD AL,2
Exit:
	ADD AL,30
	MOV [C0],AL
END
