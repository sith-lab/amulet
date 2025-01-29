.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDI] 
BSWAP EBX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD DIL, 33 # instrumentation
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -62 
ADD RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
CMOVNB EBX, ESI 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
ADD AX, -29772 
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
XCHG CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], -37 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
