.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 3 # instrumentation
MOV CL, AL 
CMOVBE BX, BX 
ADD DIL, -22 
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
MOV CX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 54 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -116 
XCHG RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], 1251702428 
ADC RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMOVO ECX, ECX 
IMUL RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
CLD  
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD SIL, -69 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
SBB AX, 2463 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], 21 
SBB AL, AL 
MOV BL, -61 
AND RDX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RDX] 
MOV SIL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
NEG RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
