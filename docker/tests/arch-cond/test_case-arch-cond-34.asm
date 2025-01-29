.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, AL 
CMOVNP EDX, EBX 
CMOVNZ RSI, RSI 
AND EAX, -522102367 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
TEST BX, 15804 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 93 
SBB SIL, 67 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
CMOVLE ESI, ECX 
SETNZ BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
IMUL DI, AX, 37 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 30829 
INC DI 
XOR EDX, 113 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 20 # instrumentation
SETNLE BL 
XOR RCX, RSI 
SBB SI, CX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], AX 
OR RDI, -92 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
CMP AX, -4704 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], BX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -46 # instrumentation
CMOVNO SI, AX 
CMOVLE SI, CX 
SETP AL 
CMOVNP SI, DX 
TEST DX, -18579 
CMOVO DX, DX 
CMP RDI, -54 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], DL 
AND RDI, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], -92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
