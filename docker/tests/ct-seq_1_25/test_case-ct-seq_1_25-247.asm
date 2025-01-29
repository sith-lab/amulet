.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 114 # instrumentation
MOV AX, CX 
CMOVNL RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
ADD AL, -76 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 75 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
SBB RDX, -33 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 101 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 93 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -718023419 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDI 
NEG AL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
INC AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
