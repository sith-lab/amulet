.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XOR AL, DL 
XADD BX, DI 
CMPXCHG CL, DIL 
MOV BL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], DI 
TEST RAX, 1641396161 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], EAX 
NEG EAX 
SBB RAX, 272940490 
AND BL, -69 
SBB EDX, 35 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RBX 
TEST EBX, 42387326 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], EBX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 58 # instrumentation
CMOVLE ESI, EBX 
MOV AL, BL 
CMOVZ RDI, RSI 
XCHG DIL, DIL 
AND AX, 22913 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
NOT CL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -45 # instrumentation
SETP AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], SI 
MOVSX DI, AL 
MOVSX EAX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDX 
AND DIL, 91 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
ADD DX, DX 
MOVZX ECX, AL 
CMOVO CX, DX 
IMUL SIL 
MOVSX EDX, DL 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
