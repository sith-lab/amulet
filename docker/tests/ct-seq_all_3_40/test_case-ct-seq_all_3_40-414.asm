.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD DIL, 57 # instrumentation
CMOVL RBX, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
CMC  
CMOVNP DX, BX 
CMOVNO BX, DX 
CMOVNS DX, CX 
IMUL DI 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
NOT BL 
AND AX, -5419 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XCHG SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -128 
CMP BL, AL 
AND RAX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RAX] 
OR RCX, 82 
SETO DIL 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
IMUL ECX, EDX 
ADD AL, -55 
INC BL 
NOT RCX 
MOVSX CX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
SETL CL 
SBB SI, -2 
ADD DIL, 4 # instrumentation
LAHF  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -25 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RSI] 
ADC RAX, -1564489177 
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 64 
CMOVS AX, DI 
SBB AL, -75 
OR DIL, DIL 
ADD EAX, EBX 
CMP ECX, 113 
SETB DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
