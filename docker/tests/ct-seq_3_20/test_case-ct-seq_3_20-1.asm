.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -44 
ADD RAX, 1859663846 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -96 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD SIL, 97 # instrumentation
ADC DL, DIL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
MUL AL 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
JMP .bb_main.2 
.bb_main.2:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
MOVSX RDX, CL 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
