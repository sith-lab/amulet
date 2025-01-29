.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -112 # instrumentation
SBB DL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], SI 
CMOVNO RCX, RDX 
CMOVLE EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
MOV DIL, BL 
MOV RDX, 988032120323466993 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
BSWAP RBX 
CMOVNP ESI, EDX 
SBB AL, 49 
JMP .bb_main.2 
.bb_main.2:
MOV SI, 22505 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDI 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
NEG CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDI 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
CMOVO EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
JNS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -83 
SUB EDX, -76 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -106 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
