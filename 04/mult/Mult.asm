// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
	@0
	D=A
	@R2
	M=D	// R2 = 0

	@R0
	D=M
	@x
	M=D	// x = R0

	@R1
	D=M
	@y
	M=D	// y = R1

	

(WHILE)
	@x //condition
	D=M
	@FINISH
	D;JLE	// if x <= 0 go to FINISH   
	
	@y //actual loop
	D=M
	@R2
	M=D+M	
	@1
	D=A	
	@x
	M=M-D
	@WHILE
	0;JMP	
(FINISH)	
	@FINISH
	0;JMP //Makes the loop infinite