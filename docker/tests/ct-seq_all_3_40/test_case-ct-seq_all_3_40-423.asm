.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
CMOVNZ RSI, RDI 
IMUL CX, SI, -18 
SBB AX, -8291 
CMOVNLE ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
INC SIL 
TEST DIL, -97 
ADD AL, 67 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
SETB DL 
TEST RAX, 85227209 
SETS DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -103 
AND AL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
ADC EAX, -1583394687 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
STC  
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, SIL 
MOVSX ESI, DI 
CMP RAX, 1591043854 
TEST AX, -26623 
MOV EAX, EBX 
OR DL, CL 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
TEST AL, -50 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
ADD SIL, DL 
AND CL, AL 
SBB DX, 64 
SUB SIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
