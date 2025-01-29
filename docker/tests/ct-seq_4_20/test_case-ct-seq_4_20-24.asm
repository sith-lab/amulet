.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
CMOVP RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], DX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
CMOVNBE RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 119 
AND RSI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -34 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], AL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RDX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -87 
JMP .bb_main.3 
.bb_main.3:
CLD  
IMUL DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
