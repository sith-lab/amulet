.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG EDI 
AND AL, BL 
SETL BL 
CMOVS EBX, ECX 
AND AL, 101 
ADC RAX, -1717809169 
ADD RAX, -516114313 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], DX 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
SETNO CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
ADC SIL, 92 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], SI 
ADC DL, 121 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -78 # instrumentation
SETO DL 
SETNBE CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
SETNBE DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 57 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
TEST AX, 17881 
MOV RBX, RCX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
XOR AL, -125 
SETNZ AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
DEC EBX 
XOR AX, -26697 
IMUL SI 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
CMPXCHG DL, AL 
SBB RSI, RAX 
MUL EDI 
ADD DIL, -88 # instrumentation
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
ADC BL, BL 
INC DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
