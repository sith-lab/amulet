.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -94 # instrumentation
SBB EDI, 109 
CMOVNB RDI, RCX 
CMC  
SUB DIL, 37 
CMP ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
ADD EAX, -296210678 
AND RAX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RAX] 
MOV DI, SI 
SBB CX, AX 
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
MUL EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD SIL, -60 # instrumentation
CMOVB RDI, RSI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
IMUL CX, DI 
CWD  
CMP EAX, -66028543 
LEA RAX, qword ptr [RDX + RDX] 
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
MOVSX EDX, AL 
CMOVZ RBX, RCX 
CMP EAX, 232614650 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
