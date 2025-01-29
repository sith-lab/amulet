.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], CL 
CMOVLE ESI, EDX 
ADD RAX, 1799691488 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], SI 
CMP DX, CX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
CMOVL ECX, EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -18 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], CX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
IMUL EAX, EBX 
SUB DL, DIL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
STD  
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 37 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
ADD SIL, 83 # instrumentation
CMOVO SI, DI 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
CMOVZ DX, SI 
CMOVNBE CX, BX 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
