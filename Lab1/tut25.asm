;-------------------------------------------------
;Parameter Handover 
;09param.asm tutorial
;25) Factorial - recursive implementation  
;-------------------------------------------------
CLO
	MOV AL,5	;Number to get factorial of
	PUSH AL 	;Pushing parameter to stack
	CALL 60		;Call the factorial function 
	POP AL		;Return value: factorial of parameter

;Procedure start *****************************
	ORG 60		
	POP DL		
	POP AL
	PUSH AL		;Push AL back into stack for recusion use
	PUSH DL		;Push DL back into stack for recusion use

	CMP AL,0	;IF: Recursion stop condition
	JNZ Rec		
	MOV AL,1	
	POP CL		;POP twice to manipulate stack pointer (remove AL=0 from stack)
	POP CL
	PUSH AL		;Return value 
	PUSH DL		;Return address
	RET		
Rec:			;Else: recursive call 
	DEC AL		
	PUSH AL		;AL decreased by 1 and sent back to function 
	CALL 60		
	POP AL		;Return value from last call 
	POP DL		;Return address from parent call
	POP BL		;AL value from parent call
	MUL AL,BL	

	PUSH AL
	PUSH DL
	RET
;Procedure end   *****************************
END
