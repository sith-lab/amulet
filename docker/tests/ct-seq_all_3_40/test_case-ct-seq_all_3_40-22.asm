.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RAX, -716299840 
OR RCX, -71 
ADC DIL, -79 
CMOVP RSI, RAX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
MUL EBX 
SUB BL, 113 
CMOVLE EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 100 
ADD RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RDI] 
ADD RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
MOV CL, AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, -77 
LEA ESI, qword ptr [RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
TEST ESI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DIL 
ADC SI, -121 
MOV BL, AL 
TEST EAX, 1609491147 
BSWAP EAX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -115 
OR AX, -27584 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
CMP RCX, 113 
XADD BX, DX 
MUL CL 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
CMPXCHG BL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
