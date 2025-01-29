.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RBX] 
ADD DIL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
CMOVZ SI, AX 
CMP AX, 18783 
SUB CX, CX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
CMOVLE EDX, EBX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 19 
CMOVNP EDX, EDX 
NEG DL 
CMOVNP EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
SUB CL, DL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
CMOVP RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RBX] 
SBB AL, 98 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG BX, AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
SAHF  
OR DI, 0b1000000000000000 # instrumentation
BSF SI, DI 
MOVZX ESI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDX] 
CMP RDX, -26 
CMP DL, BL 
STD  
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
