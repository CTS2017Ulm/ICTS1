;-------------------------------------------------
;Task3
;-------------------------------------------------
CLO
	MOV BL,0
	MOV AL,3
Loop:
	CMP AL,6
	JS Block
	JMP Out
Block:
	ADD BL,3
	INC AL
	JMP Loop
Out:
	ADD BL,30
	MOV [D0],BL
END
