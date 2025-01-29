.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -77 # instrumentation
CMOVNBE RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 38 
MOV DL, 82 
CMP EBX, EDI 
NEG BX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RAX] 
CMOVNL EDI, EBX 
XCHG DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -40 # instrumentation
CMOVLE DI, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
ADD AL, 64 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 30 
MOVSX EAX, CX 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -121 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
CLC  
CMOVNP EAX, EDI 
ADC RAX, 2088584580 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], ECX 
SUB RAX, -2052188392 
CMOVZ EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], -16 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
