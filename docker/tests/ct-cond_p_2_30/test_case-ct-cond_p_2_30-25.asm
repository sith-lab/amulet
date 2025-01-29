.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, 39 # instrumentation
LAHF  
SBB SIL, 29 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDX 
DEC SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], RBX 
CMOVNZ ESI, ECX 
MOV AL, -73 
CMOVBE RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -126 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -119 # instrumentation
CMOVNL DX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
SBB CX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
NEG RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
SAHF  
ADC EDX, 52 
IMUL RSI, RDI 
SBB RDI, -3 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -97 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
