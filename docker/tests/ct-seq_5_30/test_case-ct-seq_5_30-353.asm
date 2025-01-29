.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
ADC DL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 43 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MUL EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
IMUL CX, DI, -103 
BSWAP RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -66 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 60 # instrumentation
CWD  
XCHG BL, CL 
ADC EAX, -1170107772 
ADC DI, SI 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
MUL BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDI], 20 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -85 # instrumentation
CMOVNP ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
SBB RSI, -55 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
BSWAP RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 61 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
CMOVO CX, DX 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
CMOVNB AX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], -10 
CMP AL, 26 
SBB SIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
