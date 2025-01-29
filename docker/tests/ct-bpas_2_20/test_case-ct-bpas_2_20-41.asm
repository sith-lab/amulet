.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -127 
CMOVBE ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], 12 
CMOVL RAX, RDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 103 # instrumentation
ADC RAX, 887363415 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
XCHG DIL, CL 
CMP BL, BL 
AND RSI, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 55 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
