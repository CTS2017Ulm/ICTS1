;-------------------------------------------------
;Parameter Handover 
;Task 3
;Modulo procedure using stack
;-------------------------------------------------
CLO
	MOV AL,18	;First parameter
	PUSH AL
	MOV BL,5	;Second parameter
	PUSH BL
	CALL 90		;Function call
	POP BL	
	POP AL 		;Function return value

	MOV [C0],AL	;Printing AL to output

;Procedure start *****************************
	ORG 90
	POP DL		;Saving return address to DL
	POP BL		;Second parameter
	POP AL		;First parameter
	
	MOD AL,BL	;Performing modulo operation result goes into AL
	
	PUSH AL		;Saving result to stack 
	PUSH AL		;Matching the number of pops
	PUSH DL		;Pushing the return address back to stack 
	RET	
;Procedure end   *****************************
END
