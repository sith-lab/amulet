.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RSI] 
TEST SIL, DIL 
SBB AX, -11513 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
BSWAP EBX 
SBB RSI, -55 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
CMOVNBE DX, BX 
CMPXCHG SI, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EBX 
OR CL, BL 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
XCHG ECX, ESI 
XOR EAX, 101794850 
CMP CL, AL 
CMOVNL RSI, RCX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
TEST AX, 22674 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RAX 
CMP RAX, 263504646 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], SIL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ECX 
SETNLE CL 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 29 
SUB CL, -20 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CLD  # instrumentation
MOVSX EDI, BL 
SUB RCX, 109 
ADC ESI, EAX 
CMP DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL RAX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -78 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], SI 
SETP SIL 
MOV BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
