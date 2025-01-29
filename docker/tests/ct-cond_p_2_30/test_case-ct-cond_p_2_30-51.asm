.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD ESI, 105 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DIL 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD SIL, 29 # instrumentation
XCHG RDI, RDX 
ADC AL, 54 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDI] 
SUB RAX, 2024817007 
ADC BX, DX 
CMOVNBE EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
ADD DIL, -125 # instrumentation
XCHG DL, BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RSI] 
CMOVNBE EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDI 
ADC EAX, 173529804 
CMOVNB EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
IMUL RBX, RCX, 11 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
ADD DIL, 15 # instrumentation
ADC ESI, -81 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
SUB RAX, 2144910953 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
CMOVNB EDX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1326489673 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
