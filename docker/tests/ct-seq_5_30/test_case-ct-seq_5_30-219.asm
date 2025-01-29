.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DIL, CL 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 42 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
DEC DI 
INC RSI 
AND RDX, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
XCHG SI, AX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -99 # instrumentation
CMOVO RDX, RCX 
CMOVNBE EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
DEC CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 59 
XCHG DL, AL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
OR CX, 0b1000000000000000 # instrumentation
BSF AX, CX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
CMOVO SI, DI 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RDI 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
SUB RAX, RAX 
MOVSX ESI, CX 
CMOVZ SI, DI 
CMOVNBE CX, DX 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
CMOVP RDX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
