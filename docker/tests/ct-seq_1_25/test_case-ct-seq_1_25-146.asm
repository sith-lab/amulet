.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 53 # instrumentation
SBB RSI, -55 
MOV DI, -13097 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 16 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RSI] 
ADC BL, 41 
ADD RDX, -8 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], -42 
MOVZX RBX, DI 
ADD AL, 69 
CMOVNB DX, CX 
ADD DL, CL 
ADC RAX, 84194713 
MOV ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
SUB AL, SIL 
CMOVNLE RAX, RAX 
CMOVL RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -84 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], DL 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 104 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
