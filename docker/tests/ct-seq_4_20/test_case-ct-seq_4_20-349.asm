.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 90 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -8 
IMUL EBX, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 73 
AND RCX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RCX], 84 
ADD DIL, -121 # instrumentation
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -70 
SBB DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
XCHG RDX, RCX 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RBX 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RAX] 
INC EAX 
MOVSX ECX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 17 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
