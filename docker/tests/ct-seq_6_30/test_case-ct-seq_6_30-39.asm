.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
STC  
CLC  
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -12 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
CMOVNP BX, CX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], -14 
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
ADC RSI, 59 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX], 34 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], DIL 
JNS .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RCX] 
MOVSX ESI, CX 
CMOVNBE RSI, RSI 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -108 # instrumentation
CMOVB RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], SI 
CMOVNP DX, DX 
ADC AX, -4125 
IMUL RDI, RDI, 88 
AND RBX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
