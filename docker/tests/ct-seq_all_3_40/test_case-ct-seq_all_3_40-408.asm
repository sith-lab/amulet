.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RAX, -239441379 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
OR RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
XOR RSI, 55 
AND RDI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDI] 
SETNO BL 
AND EAX, EDX 
CMOVNBE BX, AX 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], SI 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DIL 
MOV RAX, 6819684311487628434 
CMPXCHG DX, DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
LEA EDI, qword ptr [RAX + RSI] 
MOV BX, DI 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
DEC RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], ESI 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
MOV DI, 6729 
XADD BL, BL 
XCHG EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], SIL 
CMOVS ESI, EAX 
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
ADD SIL, 5 # instrumentation
SETB SIL 
TEST EDX, EDX 
ADC BL, -27 
AND RCX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RCX] 
ADD CL, SIL 
CMPXCHG EBX, EBX 
SETNS DL 
AND RSI, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
