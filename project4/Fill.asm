// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.


(MAIN_LOOP)
@KBD
D=M
@START_BSCREEN_UPDATE
D;JNE
@START_WSCREEN_UPDATE
D;JEQ



(START_BSCREEN_UPDATE)
@SCREEN
D=A
@SI
M=D
@BLACK_LOOP
0;JMP


(BLACK_LOOP)
//select SI register
@SI
//set the value of D and A to value of SI register - starts at 16384 , then increments in every loop.
AD=M
//since A= screen map address - set current register to -1
M=-1
//increment the address
D=A+1
@SI
//update the SI register
M=D
@24576
//check if the SI register has reached 24576, if not repeat loop
D=D-A
@BLACK_LOOP
D;JNE
//finally jump to main loop to recheck the keyboard reg value
@MAIN_LOOP
0;JMP

(START_WSCREEN_UPDATE)
@SCREEN
D=A
@SI
M=D
@WHITE_LOOP
0;JMP


(WHITE_LOOP)
//select SI register
@SI
//set the value of D and A to value of SI register - starts at 16384 , then increments in every loop.
AD=M
//since A= screen map address - set current register to -1
M=0
//increment the address
D=A+1
@SI
//update the SI register
M=D
@24576
//check if the SI register has reached 24576, if not repeat loop
D=D-A
@WHITE_LOOP
D;JNE
//finally jump to main loop to recheck the keyboard reg value
@MAIN_LOOP
0;JMP