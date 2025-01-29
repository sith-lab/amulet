.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RCX, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RSI] 
ADD DIL, -41 # instrumentation
SETS DL 
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 27 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
NOT DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -102 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
CMOVNS RDX, RDI 
NEG DX 
CMPXCHG DX, CX 
MOVSX DX, AL 
CMOVNL DI, AX 
MUL DX 
AND RAX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
SETS BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RAX 
SETNP AL 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE BX, word ptr [R14 + RAX] 
XOR RCX, RAX 
CMOVBE RSI, RDX 
CMOVBE RCX, RSI 
CMP BX, -42 
CBW  
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
SUB RAX, -1163462989 
CMP RAX, -974432032 
ADC CL, -128 
SUB ESI, 14 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 69 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ECX 
SETNL CL 
AND EAX, 1930597657 
NOT DIL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
XADD CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
