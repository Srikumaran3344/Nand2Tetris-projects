//user inputs value for R0 and R1
//store R1 * R0 inside R2
//where Rx refers to the x+1 th register in the RAM

	@i
	M=0 //initialize i = 0
	@R2
	M=0 //initialize ans = 0

(LOOP)

	@i
	D=M
	@R1
	D=M-D
	@END
	D;JEQ //GOTO END IF i == R[1]

	@R0
	D=M
	@R2
	M=D+M //ans+= R0; repeat R1 times 
	

	@i
	M=M+1 //i++

	@LOOP
	0;JMP //GOTO LOOP

(END)
	@END
	0;JMP