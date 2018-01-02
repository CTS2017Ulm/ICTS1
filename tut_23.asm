;-------------------------------------------------
;Parameter Handover 
;09param.asm tutorial
;23) Using main memory 
;-------------------------------------------------
CLO
	JMP Start
	DB 0 		;Reserve RAM cell [03]

Start:
	MOV AL,3	
	MOV [03],AL	;Saving input parameter to RAM
	CALL 40		;Call procedure

;Procedure start *****************************
	ORG 40 
	
	PUSH AL 	;Saving content of registers before procedure run tp stack
	PUSH DL
	PUSHF

	MOV AL,[03]	;Feching parameter from RAM 
	NOT AL		;Inverting all bits 
	MOV [03],AL	;Saving result to same RAM cell

	POPF		;Restoring registers content from before the procedure run
	POP DL
	POP AL
		
	RET		;Jump back to main program
;Procedure end   *****************************
END
