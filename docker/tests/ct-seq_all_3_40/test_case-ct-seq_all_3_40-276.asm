.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 104 # instrumentation
CMOVNS DI, DI 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
OR RAX, 61 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], -94 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
SETNS BL 
CMP ECX, EDI 
TEST RDI, RSI 
INC ESI 
AND RBX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
ADC BL, AL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP ESI, -101 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
XCHG RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RDX 
MUL SIL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
MOVSX BX, AL 
SUB SIL, -30 
SETNZ CL 
ADC ESI, -68 
CMOVBE AX, DI 
TEST AL, BL 
SBB RAX, RAX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
CMP SI, -102 
TEST RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], AL 
ADC CL, 84 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
CMPXCHG AX, DI 
CMOVNZ BX, CX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
