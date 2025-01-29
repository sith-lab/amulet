.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -115 # instrumentation
ADC DX, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 127 
IMUL RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -14 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
XCHG CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
CMP EAX, 1687078674 
CMOVZ SI, BX 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, -27 # instrumentation
CMOVNLE RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 6 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
CMOVNL EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -27 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DL 
CMOVNB RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ECX, dword ptr [R14 + RBX] 
XCHG SIL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
