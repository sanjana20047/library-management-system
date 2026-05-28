		;program to add 64bit numbers
		;first 32 bit number in R0 and R1
		;second 32 bit number in R2 and R3
		;R4 and R5 stores result
		AREA addition,CODE,READONLY
		ENTRY
		LDR R0,=0x22222222
		LDR R1,=0x55550000
		LDR R2,=0x11111111
		LDR R3,=0x44444444
		SUBS R4,R0,R2
		SBC R5,R1,R3
STOP    B   STOP
		END
