.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RSI, RCX, -13 
AND RBX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 14 
CMOVNP ESI, EAX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -101 # instrumentation
CMOVNZ EAX, EDI 
SUB EBX, -6 
BSWAP ECX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
CDQ  
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI] 
OR DX, 1 # instrumentation
CMOVNP ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], -8 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], -20 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 50 
ADC AL, DL 
SBB BL, DL 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
INC AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
