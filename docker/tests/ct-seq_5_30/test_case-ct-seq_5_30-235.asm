.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
MOVSX RBX, SIL 
MUL RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD CL, 46 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 26 
MOVZX EBX, DL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -8 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -36 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RAX] 
MOV DL, -92 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
AND RCX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RCX] 
ADD DIL, -18 # instrumentation
CMOVNZ SI, DX 
CMOVNO RDX, RBX 
ADD EAX, 1172208795 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
ADD RSI, -29 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
