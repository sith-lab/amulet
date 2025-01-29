.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC CX 
MOV BL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RDX] 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 99 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -86 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -59 
SUB EAX, 96574338 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], -126 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
MOVZX RDX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
