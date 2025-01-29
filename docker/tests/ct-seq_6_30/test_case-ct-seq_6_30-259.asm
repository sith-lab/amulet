.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ESI 
MOV CL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 121 
JLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
MOV DL, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
CMOVNP RDI, RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 78 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 75 
CMOVNO BX, SI 
SUB AX, 29028 
IMUL RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 123 # instrumentation
MOVZX ECX, AX 
CMOVNP EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
IMUL DIL 
ADD EAX, 1992295316 
LOOPE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 2 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -125 # instrumentation
CMOVNB ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
CLD  
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
