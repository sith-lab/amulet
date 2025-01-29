.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RBX, RDI 
CMOVB EAX, ESI 
INC ESI 
ADC DI, 125 
CMOVNLE EBX, ECX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
ADD DIL, 14 # instrumentation
CMOVNLE DX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EBX 
CMP AX, 7866 
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 84 
MOVSX ECX, SI 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EBX 
INC EDI 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
MOVSX DX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -57 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -56 
ADD AL, 15 
CMOVNZ RAX, RDI 
IMUL AX 
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 121 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
