.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
INC RCX 
XOR DIL, -31 
CMOVNP EDI, EAX 
CMOVLE EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
ADD SIL, 22 # instrumentation
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
CMOVNBE EAX, EDI 
CMOVNLE ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDI 
CMOVS DI, AX 
ADD EBX, EAX 
SETNO AL 
SBB DIL, -116 
JMP .bb_main.2 
.bb_main.2:
AND AX, -9350 
AND AL, 114 
MOV RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI], -5 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -84 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -46 # instrumentation
SBB SI, DI 
TEST RAX, -1192014957 
SETNBE BL 
CMOVNLE RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
OR BL, 26 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 11 
CMOVNZ SI, DX 
NOT BL 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADC AX, 15 
XOR EDX, -112 
MOV DI, SI 
CDQ  
INC BX 
SETB BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RCX 
ADC BX, -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
