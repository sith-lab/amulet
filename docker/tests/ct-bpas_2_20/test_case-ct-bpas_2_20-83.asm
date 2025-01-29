.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DL, DIL 
AND RBX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
MOV EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RCX] 
INC BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RDI], 127 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -13 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 4566 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -73 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
SUB AX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RSI 
IMUL AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
