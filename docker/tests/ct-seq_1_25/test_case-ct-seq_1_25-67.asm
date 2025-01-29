.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 32 # instrumentation
ADC AL, BL 
SBB DIL, -70 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RDX] 
CMOVNBE ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
IMUL SI 
ADD SIL, -9 # instrumentation
CMOVNP CX, BX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 109 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], BL 
CMOVNB EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -87 
SUB SIL, 89 
AND RDI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDI] 
CMP AX, -16256 
DEC DX 
SBB AL, -87 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX], -21 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -65 
CMP RAX, -991721355 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
