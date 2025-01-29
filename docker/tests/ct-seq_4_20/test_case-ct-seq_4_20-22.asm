.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMOVNB EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
ADC BX, BX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RBX] 
ADD DIL, 89 # instrumentation
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
IMUL DX, BX 
ADD DIL, -95 # instrumentation
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 58 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
CMOVNB ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
