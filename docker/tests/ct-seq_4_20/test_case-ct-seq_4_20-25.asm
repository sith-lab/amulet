.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], -45 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 83 
DEC RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 89 
AND RAX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -94 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -105 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
ADC AX, -5172 
AND RAX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DX 
ADD DIL, BL 
MUL CL 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
