.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 91 
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RBX 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -18 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], -75 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -123 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], 118 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
ADD EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
