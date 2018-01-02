;-------------------------------------------------
;Parameter Handover 
;09param.asm tutorial
;22) Using registers
;-------------------------------------------------

CLO 
	MOV AL,20 	;Number to double
	CALL 30		;Calling the procedure

	MOV [C0], AL	;Printing the result 

	ORG 30		;Procedure
	MUL AL,2	;Multiplying the value of AL by 2
	RET		;Jump back to main program
END
