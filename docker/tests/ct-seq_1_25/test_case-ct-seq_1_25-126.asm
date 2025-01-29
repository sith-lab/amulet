.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RDI, qword ptr [RCX] 
BSWAP EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 79 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
CMOVP RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
CMOVNP EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EBX 
CMP RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
NEG RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
SBB AX, 16898 
CMP RAX, 993259095 
CWDE  
INC RDI 
XCHG RCX, RAX 
CMOVO RAX, RSI 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
