// C = A / B
@18
M=0
@16
D=M
@19
M=D
(LOOP)
@17
D=M
@19
D=D-M
@END
D;JGE
@18
M=M+1
@17
D=M
@19
M=M-D
@LOOP
0;JMP
(END)
@END
0;JMP