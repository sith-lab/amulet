.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -96 
ADD BL, CL 
JMP .bb_main.1 
.bb_main.1:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 33 
CMOVNB RDX, RBX 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDI] 
ADD AX, -18655 
JP .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -73 
SUB RAX, 1536164460 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
CMOVZ BX, SI 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -60 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -52 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
CMOVNP RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -72 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
