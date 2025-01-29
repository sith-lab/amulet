.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 126 
SBB AX, 26185 
NEG RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
CMOVO DX, AX 
JMP .bb_main.1 
.bb_main.1:
ADD EAX, -747176896 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -12 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
ADC DL, BL 
CMOVZ AX, DX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 58 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDX 
MOV DIL, CL 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
XCHG ECX, EDX 
CLC  
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 19 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
CMP RDI, RDX 
CMOVNO RAX, RDI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 103 # instrumentation
SBB RAX, 1810650762 
CMOVBE RDI, RDI 
CMOVB CX, CX 
CMOVNO AX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RSI 
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
