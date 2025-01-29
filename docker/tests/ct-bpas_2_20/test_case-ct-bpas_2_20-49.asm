.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RCX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI], -125 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
SBB SI, -42 
AND RBX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RDI] 
CMOVNL EDI, EBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
CMOVNL ECX, EBX 
DEC CL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
DEC EDX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -63 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
