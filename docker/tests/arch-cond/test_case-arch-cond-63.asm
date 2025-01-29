.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, 48 # instrumentation
CMOVNBE DX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], 20 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DIL 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], AL 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR AL, -51 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], CL 
XOR ESI, EAX 
MOV RAX, -3144578431073858091 
CMPXCHG EBX, EAX 
CMOVNBE EDX, EBX 
MOV DI, SI 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -44 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], 39 
TEST DI, SI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], -7 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ECX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EBX 
CMP DI, -56 
MOV RDX, RSI 
NEG BL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
IMUL RAX, RCX, 66 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
CMOVNS DX, SI 
CMOVNL RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
BSWAP EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RDI] 
MOVZX SI, BL 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], -73 
CMOVNBE RSI, RAX 
CMOVLE EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
