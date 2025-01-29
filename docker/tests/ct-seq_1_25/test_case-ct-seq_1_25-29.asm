.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
ADC EAX, 618589296 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 2116216824 
CMOVNP RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -374087021 
CMOVNP EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], -35 
ADC RAX, -1450507089 
CMOVNZ CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
ADD SI, CX 
CMOVZ RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
CMOVBE DX, DX 
IMUL RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
