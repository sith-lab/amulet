.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DIL, 99 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], 8 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
CMP AL, 108 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
DEC DIL 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], -15 
AND RDX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDX] 
CLC  
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 4 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
CDQ  
NEG RCX 
MOVSX EAX, BL 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DX 
CMOVNZ RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], 120 
INC EBX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -48 # instrumentation
CMOVNO RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 80 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
