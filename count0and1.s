			;program to count number of zeroes and ones
			;given number is loaded to register or not
			;R3 stores number of ones
			;R4 stores number of zeroes
			AREA count,CODE,READONLY
			ENTRY
			LDR R5,=NUM
			LDR R0,[R5]
			MOV R1,#32
LOOP 		MOVS R0,R0,LSR#1
			ADDCS R3,R3,#1
			ADDCC R4,R4,#1
			SUB R1,R1,#1
			CMP R1,#0
			BNE LOOP
			NOP
STOP        B  STOP
			;beginning of data area
			AREA SRC,DATA,READWRITE
NUM         DCD  0x00000012
			END
