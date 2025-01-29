.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDI 
CMOVZ EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
SBB DIL, -17 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], -66 
SBB ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], SIL 
AND RAX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RAX] 
SBB RAX, -1956139708 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
ADD DIL, 3 # instrumentation
MOV SIL, 56 
ADC AX, 22319 
CMOVNZ DX, AX 
MOV AL, BL 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
