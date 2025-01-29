.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 12891 
XCHG RSI, RAX 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RDX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, 8 # instrumentation
ADC AX, DI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RBX] 
MOVZX EBX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
ADD SIL, 81 # instrumentation
CMOVNB DI, BX 
CMOVP CX, DX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
