.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 104 # instrumentation
CMOVNBE RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
XCHG DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 62 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RDI] 
CMOVNL RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
MOV DX, DI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 6 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
