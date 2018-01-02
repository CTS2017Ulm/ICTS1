;-------------------------------------------------
;Parameter Handover 
;09param.asm tutorial
;24) Factorial - iterative implementation 
;-------------------------------------------------
CLO
	MOV AL,5 	;Calculate 5 factorial 
	PUSH AL		;Pass parameter using stack
	CALL 60 	;Call procedure on address 60
	POP AL		;Pop result from stack into AL
	MOV [C0],AL	;Print Hexa value of AL 

;Procedure start *****************************
	ORG 60		
	POP DL		;Save return address to DL
	POP AL		;Get parameter from stack into AL
	
	PUSH AL		;Copy AL into BL
	POP BL
Loop:			;Decreasing BL and multiplying by AL until reaching 1
	CMP BL,1	;Loop end condition
	JZ End		
	DEC BL		
	MUL AL,BL	
	JMP Loop	
End:
	PUSH AL		;Push result into stack 
	PUSH DL		;Push return address 
	RET		;Jump back to main program
;Procedure end   *****************************
END
