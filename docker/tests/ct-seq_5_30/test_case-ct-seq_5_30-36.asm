.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL BL 
ADD DIL, 87 # instrumentation
CMOVP AX, DI 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RAX] 
LEA EAX, qword ptr [RSI + RCX + 51978] 
CWD  
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EAX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 9 # instrumentation
SBB DIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], SI 
ADD CL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
SBB EAX, -1081489856 
CMOVLE ESI, EBX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVZX RDX, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 106 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
ADD RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RDX] 
SBB AX, 3226 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], SI 
CMP RAX, -477226319 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
