.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 58 # instrumentation
ADC RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RBX] 
STD  
MOVZX ECX, DX 
CMP SIL, -47 
AND RCX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RDI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RCX] 
ADC RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1981964653 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 1235687629 
SBB SI, -17 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -18957 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -110 
SUB AL, -55 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
IMUL ECX 
MOVZX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
DEC CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], 111 
DEC BL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -9665 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
