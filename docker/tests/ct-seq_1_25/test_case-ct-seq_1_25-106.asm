.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DX, BX 
MOVSX EAX, SI 
ADD CL, BL 
CMOVZ RBX, RDX 
SUB RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
SBB CL, BL 
CMOVNB EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RBX] 
CMOVNB RBX, RAX 
ADD RDI, RAX 
ADD RDX, 127 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -37 
CBW  
SBB AX, 28688 
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX], -37 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RBX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDX 
ADD SIL, -113 # instrumentation
CMOVP EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
