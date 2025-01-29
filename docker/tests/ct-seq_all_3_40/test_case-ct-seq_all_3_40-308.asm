.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], SIL 
SETP SIL 
ADD AX, 19436 
MOVSX CX, BL 
CMPXCHG DIL, DL 
OR EAX, 77919054 
MOV EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
ADD RAX, 427769699 
XOR ECX, 47 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RBX] 
SETNP AL 
CLC  
CMOVBE EBX, EAX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 31 # instrumentation
SETNZ SIL 
AND RDX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDX] 
MOV DIL, 23 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], EAX 
XADD CX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RDX] 
IMUL RCX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 105 # instrumentation
CMOVNO AX, AX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], ESI 
CLC  
AND EBX, 107 
XOR ECX, EBX 
XOR EAX, -112 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDI] 
ADD SIL, -87 # instrumentation
CMOVNBE RSI, RCX 
SUB RCX, 50 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DIL 
CMOVNBE SI, DX 
NEG BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
