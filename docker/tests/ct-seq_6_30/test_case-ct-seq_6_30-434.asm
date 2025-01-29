.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
NEG CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -33 
JNS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDX] 
CMOVBE RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
ADD SIL, 19 # instrumentation
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMP EAX, 1425516604 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], AX 
XCHG AX, DI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EDI 
CMOVL EDX, EDX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], -36 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
CMOVNS EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMOVLE DX, DI 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -85 # instrumentation
SBB EDX, -12 
SBB DIL, -52 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
CMOVZ RBX, RBX 
SUB DIL, -117 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
