.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 60 # instrumentation
CMOVP AX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
CMOVLE ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
MOV DL, -25 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DL 
MOV AL, SIL 
ADD AL, -103 
CMOVB ESI, ESI 
DEC RBX 
SUB SIL, DL 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
MOVZX RCX, CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDX 
ADC BL, 87 
CMP RAX, -623572094 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
