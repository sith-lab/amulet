.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
CMP CX, BX 
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -21 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -6 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -50 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
LEA ECX, qword ptr [RDX + RBX] 
XCHG CX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 117 
SBB DX, -19 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND RBX, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
CMOVLE CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
