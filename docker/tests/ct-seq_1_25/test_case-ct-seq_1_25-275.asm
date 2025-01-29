.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
XCHG EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RBX] 
LEA RAX, qword ptr [RAX + RCX + 48190] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DI 
CMOVL EBX, EDX 
SUB RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
CMOVBE SI, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RBX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], AX 
IMUL RDI, RDX, -64 
AND RAX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDI] 
CMOVBE RAX, RDX 
XCHG SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
