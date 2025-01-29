.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 26 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
DEC SI 
DEC DL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
CMOVO ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDI 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
ADC BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RBX] 
ADD AL, 108 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
