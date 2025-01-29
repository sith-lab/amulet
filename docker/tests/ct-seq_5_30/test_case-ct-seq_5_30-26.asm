.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -116 # instrumentation
ADC EAX, -421291890 
AND RBX, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RBX] 
ADD RAX, -2135087797 
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI], 12 
SUB ESI, 17 
CMOVNBE EDI, EDI 
OR BX, 0b1000000000000000 # instrumentation
BSF SI, BX 
ADD DIL, -111 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVSX EAX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
IMUL DL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX RDI, BX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], 58 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EDI 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
MOVSX EBX, DL 
CMOVNB BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 42 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
XCHG RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
