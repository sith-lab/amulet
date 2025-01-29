.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDI] 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
BSWAP EDX 
SUB EAX, 493585146 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
NEG DL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 71 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
MOV RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
