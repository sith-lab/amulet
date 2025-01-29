.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], EDX 
MOVSX EDX, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], RSI 
ADC DI, BX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -81 
XOR EAX, -714672014 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 46 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], EBX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDX] 
LEA ESI, qword ptr [RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -56 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RAX] 
OR BL, SIL 
AND RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 108 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], CX 
BSWAP EAX 
BSWAP RSI 
SUB EAX, 1989399369 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDI] 
ADC BL, 127 
OR AL, -122 
JMP .bb_main.2 
.bb_main.2:
TEST BX, 21104 
NOT CL 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
XOR DIL, 88 
SETP SIL 
TEST EAX, -1841424965 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
MOV SIL, SIL 
AND RBX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RBX] 
CMOVNBE RDX, RDI 
XOR CX, -56 
INC RDX 
XCHG SI, DX 
CMP RDX, -93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
