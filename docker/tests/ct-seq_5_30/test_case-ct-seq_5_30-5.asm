.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
CMOVNP RSI, RBX 
SBB DL, BL 
CWD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RSI] 
CMOVNLE ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
XCHG AX, AX 
MUL BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
ADD SIL, 68 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
ADD EAX, 408553677 
IMUL RSI, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 81 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -90 
CMOVP EDI, EDI 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 67 # instrumentation
CMOVP RDI, RBX 
SUB RDI, RCX 
CMOVL EDX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RSI] 
SBB RSI, -55 
JMP .bb_main.4 
.bb_main.4:
IMUL EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], AL 
CMOVNL RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
