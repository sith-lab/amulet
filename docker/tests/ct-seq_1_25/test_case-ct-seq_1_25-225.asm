.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 126 # instrumentation
CMOVNZ SI, BX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
SAHF  
STC  
MOVSX ECX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -105 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RDI] 
CMP SI, -58 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
CMOVB RBX, RCX 
STC  
BSWAP RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], 19 
CMP EAX, 9 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -77 
CMOVNS EBX, EDI 
CMP SIL, SIL 
CMOVP RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
IMUL DL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
