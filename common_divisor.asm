;-------------------------------------------------
;Parameter Handover 
;Task 3
;Greates common divisor
;-------------------------------------------------
CLO
	MOV AL,7F	;i1	
	MOV BL,9	;i2
Loop:
	PUSH AL
	PUSH BL
	CALL 30
	POP CL		;r: Function return value
	POP BL		;Restore value of BL
	
	PUSH BL		;MOV AL,BL
	POP AL
	PUSH CL		;MOV BL,CL
	POP BL
	CMP BL,0
	JNZ Loop

	ADD AL,30	;Offset to fit ASCII
	MOV [C0],AL 	;Output greatest common divisor 
	
;Procedure start *****************************
	ORG 30
	POP DL		;Saving return address to DL
	POP BL		;Second parameter
	POP AL		;First parameter
	
	MOD AL,BL	;Performing modulo operation result goes into AL
	
	PUSH BL		;Restoring value of BL
	PUSH AL		;Modulo result
	PUSH DL		;Pushing the return address back to stack 
	RET	
;Procedure end   *****************************	
END
