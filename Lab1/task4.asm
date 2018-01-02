;-------------------------------------------------
;Task4
;-------------------------------------------------
CLO
	MOV BL,0
	MOV AL,0
Loop: 
	CMP AL,6
	JS Block
	JMP Out
Block:
	CMP AL,3
	JNZ Else
	ADD BL,3
Else:
	INC AL
	JMP Loop
Out:	
	ADD AL,30
	ADD BL,30
	MOV [C0],AL
	MOV [D0],BL
END
