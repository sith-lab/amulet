.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -77 # instrumentation
SBB RAX, -880123460 
CMOVNBE ESI, EAX 
INC DL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 9 # instrumentation
MOVSX CX, DL 
ADC AX, -28908 
CMOVNBE ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DX 
CMOVZ RAX, RBX 
ADD SI, DX 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
ADD SIL, 37 # instrumentation
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDX] 
CMP CX, CX 
ADC SI, DX 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -18 # instrumentation
CMOVNZ EBX, ECX 
ADD ECX, EAX 
CMOVNO DX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 99 
MUL SI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 111 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
MOVZX EDI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
