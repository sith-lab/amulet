.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 90 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
MOV RDX, 3179934684573579748 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RAX] 
CMOVL RAX, RDX 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDX] 
ADC BX, AX 
ADC BL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], CX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP DI, DI 
XCHG EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RAX] 
ADD DIL, 126 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], CX 
ADD DI, -90 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], 7 
CMOVS RBX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
