.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
ADC BL, -3 
ADD SIL, 110 
CMOVO RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
SBB AX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -20985 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
INC ECX 
CMOVNP RAX, RBX 
CMOVP RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
ADD DIL, 27 # instrumentation
SBB RAX, 812611083 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -57 
IMUL EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
MOV BL, 107 
ADC AL, -34 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RDX 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], SI 
CMP AL, -26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
