.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EDX, ECX 
ADD ECX, -125 
SBB AL, AL 
ADD RAX, -1819858671 
MOVZX DX, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -2 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RBX] 
ADD SI, -50 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDX] 
IMUL BX 
IMUL RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -59 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RCX 
CMOVNBE SI, CX 
CMOVS EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -51 
ADC DX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -29 
XCHG EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -97 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RBX] 
CMOVNZ RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], CL 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], BX 
SBB BL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
MOVZX RCX, SIL 
SBB DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
