.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
CMP DX, -9 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
SUB RCX, 31 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
XCHG CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
DEC DI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -115 
ADC AL, -83 
CMOVO RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 95 # instrumentation
CMOVP RAX, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RAX] 
ADD DI, 83 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 123 # instrumentation
CMOVNP SI, BX 
MOV ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
CMP AL, 56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
