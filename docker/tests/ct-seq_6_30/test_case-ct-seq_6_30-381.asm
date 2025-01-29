.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG RSI 
BSWAP EDI 
CMOVP ECX, EDX 
STC  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], ECX 
NEG RBX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -75 # instrumentation
MOV EDI, EAX 
ADC SIL, -94 
INC DIL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 82 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG SI, DX 
IMUL DI 
MOVSX EBX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
CMOVNZ EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RBX] 
CMOVNO DX, DI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -60 # instrumentation
CMOVNZ EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVNZ RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EAX 
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
IMUL BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
