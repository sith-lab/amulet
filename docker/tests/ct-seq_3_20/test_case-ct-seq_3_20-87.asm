.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 44 
SUB RAX, -1751272626 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RCX] 
CMP DIL, 35 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ESI 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], 3 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -34 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -84 # instrumentation
CMOVNP RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -119 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
