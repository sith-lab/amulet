.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 90 # instrumentation
INC ESI 
CMOVS RAX, RDX 
XCHG BL, SIL 
SBB RAX, -1337596626 
CMOVP RSI, RCX 
SBB AL, -63 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ESI 
LEA ECX, qword ptr [RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RAX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
IMUL DL 
ADD DIL, -100 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RDX] 
CMOVZ ESI, ESI 
CMP EBX, 41 
SUB CL, 119 
IMUL AL 
SBB CL, 27 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
CMP BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
IMUL ECX, EBX, -114 
ADD EAX, -25 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -38 
IMUL RAX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
