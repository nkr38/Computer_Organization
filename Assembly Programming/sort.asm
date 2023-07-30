// Bubble sort
@21 //continue
M=1
@17 // RAM[17] stores n
M = M - 1
(WLOOP)
@21
D=M
@EXIT
D;JEQ
@21
M=0
@18 // RAM[18] stores i
M = 0 // i = 0
(LOOP)
@18
D = M // D = i
@17 // RAM[17] stores n
D = D - M // Check for loop bound; D = i - n
@WLOOP
D;JEQ // If (i - n) == 0, goto EXIT
@16 // RAM[16] stores base address of array A
D = M
@18
D = D + M // Absolute address (base + index); our pointer value
@19 // A[i] We store the pointer in RAM[19] for future use 
M = D
@20 // A[i+1]
M = D + 1
A = M
D = M
@19
A = M
D = D - M
@18
M = M + 1 // i = i + 1
@LOOP
D;JGT
@19 // A[i] We store the pointer in RAM[19] for future use 
A = M
D = M
@22 
M = D // temp = A[i];
@20 
A = M
D = M 
@19
A = M
M = D // A[i] = A[i + 1];
@22 
D = M // temp
@20 
A = M
M = D
@21
M = 1
@LOOP
0;JMP
(EXIT)
@EXIT
0;JMP // Terminate program