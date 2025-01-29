.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
MOVZX AX, DL 
ADC DX, 103 
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RSI], 64 
NEG DIL 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX], -125 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -106 
ADC SIL, 45 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 16 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -5 
AND RDX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDX] 
XCHG AL, DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
