.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 928 
CMOVNL ESI, EAX 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
SBB DL, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], DI 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RSI] 
SUB AL, CL 
SETO BL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX], -26 
NEG CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
SBB BL, -68 
XADD AX, DI 
ADD RAX, -92 
AND RDX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDI 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 45 
CMOVNS SI, DI 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV RCX, 8113850902151306017 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
XOR AL, -49 
ADD EAX, -1686614334 
ADD DIL, 67 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
SBB ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], SIL 
CMPXCHG BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
