.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
CMOVNP RCX, RSI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RSI] 
ADC RAX, -143282362 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
CMOVNB EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
DEC RBX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
ADD DIL, 28 # instrumentation
CMOVO CX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -33 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], SIL 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 22 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
SBB AX, 18373 
ADD DL, 90 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
NEG DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
