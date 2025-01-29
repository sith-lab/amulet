.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL SI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -118 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
NEG CX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RAX] 
BSWAP ECX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
MOVZX BX, SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RSI] 
CMOVZ EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
LEA ESI, qword ptr [RSI + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RDX] 
MOVSX DX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
