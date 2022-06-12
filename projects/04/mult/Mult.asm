// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// sum = 0
@sum
M = 0

(LOOP)
// read R0
@R0
D = M

// JUMP if i == M[R0]
@ASSIGN
D;JEQ

// R[0]--
@R0
M = M - 1

// sum += R1
@R1
D = M 
@sum
M = M + D

@LOOP
0;JMP

// M[R2] = sum
(ASSIGN)
@sum
D = M

@R2
M = D
// return
@END
0;JMP

(END)