.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], RBX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
CMP CX, -39 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
CMP SIL, -93 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RAX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
CMOVS AX, BX 
ADD RAX, -1185263073 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI], 30 
ADD DIL, -60 # instrumentation
CMOVS RAX, RCX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EAX 
CMP AL, -93 
BSWAP EBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RSI] 
LEA ECX, qword ptr [RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
