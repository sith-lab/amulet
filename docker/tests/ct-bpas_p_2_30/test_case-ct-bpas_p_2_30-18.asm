.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DL 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
CMP AL, 38 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
MUL RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
CMOVNBE DX, DI 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
IMUL DI 
XCHG RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], DIL 
MOV RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RSI] 
SUB RAX, 535452399 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -6 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
MOVSX EAX, BX 
CMOVZ RAX, RDX 
MOV ECX, EDX 
CMP CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RCX 
MOV SI, DI 
IMUL DL 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
