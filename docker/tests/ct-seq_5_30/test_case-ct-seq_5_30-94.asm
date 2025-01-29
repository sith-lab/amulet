.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
SUB ESI, -62 
CMOVNS EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
ADC AX, 104 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 105 # instrumentation
CLC  
CMOVLE SI, BX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DIL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
NEG DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 18 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RCX] 
CMOVBE ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 116 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
XCHG EDX, ESI 
SBB AL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 61 # instrumentation
ADC BL, -111 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -69 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
