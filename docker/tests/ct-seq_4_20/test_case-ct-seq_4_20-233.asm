.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -18 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -113 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], -72 
ADD DIL, 13 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
IMUL AX 
AND RSI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
IMUL EDX 
ADD SIL, -16 # instrumentation
CMOVL AX, SI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
CMP AL, 29 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], -46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
