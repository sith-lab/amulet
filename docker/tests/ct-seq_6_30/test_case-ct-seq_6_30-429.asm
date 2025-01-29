.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL AL 
SUB AL, -87 
IMUL DX, CX 
SUB AL, AL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -42 # instrumentation
ADC RSI, 82 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -126 
MOVZX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -94 
JNO .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -62 
ADD AL, -89 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
CMOVBE RDX, RBX 
XCHG DL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
SBB EAX, -1501685667 
ADC BL, AL 
CMOVBE RDX, RCX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -27 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], SIL 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
ADC RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RAX] 
CMOVNB ESI, EDX 
CMOVNZ RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
CMOVNP DX, BX 
MOVSX DI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
