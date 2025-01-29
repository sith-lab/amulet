.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 32 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], AX 
CMOVZ CX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
SBB EDX, EBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP DIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -42 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
SUB RDI, 66 
SBB AX, 25411 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -99 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
