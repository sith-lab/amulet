.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RCX, RBX 
SUB RDI, -32 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
IMUL BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
CMOVNP RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 68 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 73 
CMOVNL ESI, EBX 
ADD BL, 69 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -125 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
MUL AL 
ADD SIL, 98 # instrumentation
CMOVNS RCX, RDI 
SBB EAX, -872701777 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
