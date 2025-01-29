.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, 41 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
SBB CX, DI 
CMOVS BX, DX 
MOVZX RDI, CX 
SUB DX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
ADD SIL, 94 # instrumentation
CMOVO RDI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], DI 
MOV RBX, -781873871281769056 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -97 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RAX] 
SUB RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], CX 
CMOVS EAX, ESI 
CMOVNO DI, DX 
ADC CL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
IMUL AX 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -54 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
MOV EDX, ECX 
MOVZX EAX, CL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 26 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 7 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDX 
CMOVZ DX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
