.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL EAX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
CMOVO AX, SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -103 
XCHG CX, AX 
MOVSX RCX, CX 
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
IMUL EAX, ESI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
IMUL EDI 
ADD DIL, -78 # instrumentation
CMOVP BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RBX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
MOVSX ECX, CL 
CMOVNZ RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RAX] 
CDQ  
CDQ  
XCHG BX, AX 
NEG CL 
CMOVNZ ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
