//blacken all the screen PIXELS if a key is pressed
//if not leave it white

(KEY)
	@i
	M=0
	@KBD
	D=M
	@BLACKLOOP
	D;JGT //if key is pressed, then kbd > 0
	@WHITELOOP
	D;JEQ //if key is not pressed, then kbd = 0

(BLACKLOOP)
	@i
	D=M
	@SCREEN
	A=D+A //iterating with i from 0 to kbd - 1 which is entire screen
	M=-1 // black screen for 16 pixels

	D=A
	@KBD
	D=D-A
	D=D+1
	@KEY
	D;JEQ //if the screen reaches its end no need to fill black 

	@i //if the screen did not reach the end then i++
	M=M+1
	@BLACKLOOP
	0;JMP
	

(WHITELOOP)
	@i
	D=M
	@SCREEN
	A=D+A //iterating with i from 0 to kbd - 1 which is entire screen
	M=0 // black screen for 16 pixels

	D=A
	@KBD
	D=D-A
	D=D+1
	@KEY
	D;JEQ //if the screen reaches its end no need to fill black 

	@i //if the screen did not reach the end then i++
	M=M+1
	@WHITELOOP
	0;JMP

(END)
	@END
	0;JMP