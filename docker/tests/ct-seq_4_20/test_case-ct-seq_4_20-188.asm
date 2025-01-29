.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
SUB EAX, -870538222 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EDI 
CMOVNZ DI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RSI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -22 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
MOVSX EAX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RDX] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL DI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
MUL ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
