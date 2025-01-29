.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 56 # instrumentation
MOVSX EDI, CL 
CMOVS DX, BX 
ADC EBX, 3 
NEG BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RCX] 
ADD EAX, 1505250854 
TEST RBX, RDI 
MOVZX EBX, SI 
NEG AX 
SETNZ DL 
XCHG RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 99 # instrumentation
CMOVNLE DI, DI 
OR EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
IMUL RSI, RCX 
ADD DIL, 13 # instrumentation
SETL AL 
ADD EBX, EDI 
ADD AL, SIL 
CDQ  
ADD EDX, -115 
BSWAP RSI 
ADD ESI, 4 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
XOR EBX, 75 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RSI] 
MOV DL, AL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -95 # instrumentation
SETNZ SIL 
OR AL, -101 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EDI 
OR EDX, -57 
NEG AX 
OR EDI, -70 
XOR AX, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
CMOVNZ EDX, EAX 
SUB DL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
