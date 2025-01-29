.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 75 # instrumentation
SETNS DL 
CMPXCHG EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -80 
TEST RSI, -861369987 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
AND EBX, -68 
OR EDX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], -119 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RSI] 
CMP EDI, 114 
SETNS CL 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 70 
NEG EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
XOR DI, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], DI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
SUB EAX, 478513533 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
JNBE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
CMOVNZ RDI, RBX 
ADD CX, -79 
SUB SIL, SIL 
CMC  
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
XADD BL, AL 
SUB RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, 70 
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
TEST DI, 16037 
ADC EAX, 1936710374 
MUL DL 
LEA CX, qword ptr [RBX + RSI + 37324] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
