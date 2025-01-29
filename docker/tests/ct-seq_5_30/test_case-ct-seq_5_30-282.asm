.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -43 
XCHG CX, AX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], 57 
XCHG DI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD EDI, -66 
CMOVNLE EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
CMOVZ CX, DX 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -44 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RBX 
ADD EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 11 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -61 
ADC DI, -10 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
CMOVLE RCX, RCX 
CMOVNS DI, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RSI] 
CMC  
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 101 # instrumentation
CMOVNLE ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -83 
ADC RAX, RBX 
NEG DL 
SUB AX, 110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
