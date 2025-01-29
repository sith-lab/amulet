.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -53 # instrumentation
CMOVL CX, DX 
SUB CL, CL 
CMOVO EBX, ESI 
CMOVNBE DI, CX 
TEST AX, -17373 
ADD EAX, EDX 
CMOVZ BX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
AND BL, CL 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
CMP AL, 80 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -126 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EBX 
XOR EDX, 115 
TEST CL, SIL 
IMUL EDI, EAX, -119 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], -101 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RCX 
INC BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
IMUL DI 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  # instrumentation
ADD SIL, 22 # instrumentation
CMOVO EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RBX] 
STC  
CMPXCHG RAX, RAX 
CMP RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
TEST AL, -16 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 5646 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
