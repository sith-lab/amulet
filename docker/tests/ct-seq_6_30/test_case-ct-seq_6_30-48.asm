.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -48 # instrumentation
SBB EBX, 66 
MUL BL 
ADD DIL, DIL 
CMOVNZ EBX, EDX 
MUL RBX 
SUB AL, -119 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
CMOVNBE RBX, RSI 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
INC ESI 
CMP AL, 42 
IMUL AL 
JO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
CMP CL, -24 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], 108 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 75 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RAX 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI] 
ADD BL, SIL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
MOV EAX, -1979981264 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
LOOPNE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMOVLE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
