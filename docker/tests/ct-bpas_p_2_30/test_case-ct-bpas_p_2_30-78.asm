.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 25 # instrumentation
CMOVNS RAX, RAX 
CBW  
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
ADD EAX, 2113450412 
CMOVO RDI, RDX 
SBB AL, 47 
CMOVNZ EDX, EAX 
ADD CX, BX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX], 41 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RDX, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDX] 
CMOVO EAX, ESI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
MOVSX DI, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 14 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 51 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
MOV BL, -66 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -85 
CMOVNP ESI, ECX 
CMOVNL AX, DX 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
SUB RAX, -1204364746 
LEA RAX, qword ptr [RDX + RCX] 
IMUL ECX, EDX, 56 
MOV RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
