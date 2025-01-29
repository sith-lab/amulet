.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
CMOVL ESI, ESI 
MOVSX EAX, DI 
DEC AL 
MOVZX BX, BL 
LEA AX, qword ptr [RDI] 
CMOVNL RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RCX] 
CMOVL RAX, RAX 
CMP AL, 116 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -23152 
ADD DIL, SIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
MOVSX DX, DIL 
MOV EDX, ESI 
NEG EAX 
CMOVNP RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1566568940 
SUB CL, AL 
XCHG SIL, SIL 
CMOVP DI, SI 
SBB DI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], 55 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
MOV RSI, -6253457570407407557 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
