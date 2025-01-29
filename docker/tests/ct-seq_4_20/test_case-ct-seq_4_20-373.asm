.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -15 # instrumentation
CMOVP EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], SI 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
ADC DI, DI 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
CMP DIL, AL 
CMOVNB RCX, RBX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD AL, 90 
CMOVNLE DI, DI 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
