.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RCX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], -23 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -31237 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 45 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 67 
SUB SIL, 6 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 1023508473 
MOV AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
