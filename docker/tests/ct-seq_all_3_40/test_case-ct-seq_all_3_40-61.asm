.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
XOR CL, DL 
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
MOV SIL, AL 
CMOVNLE RDI, RSI 
SETO SIL 
AND ECX, EDI 
XOR RAX, 1453742647 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -125 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], -11 
MOV BX, 14335 
CMOVNLE BX, DX 
CMOVNO EBX, EAX 
ADC AL, 58 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD SIL, -81 # instrumentation
SETL CL 
NOT DL 
CMOVNO EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
AND RAX, 1005007991 
DEC SIL 
MOVSX RAX, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], EBX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], CX 
CMOVLE CX, CX 
CMOVP BX, BX 
ADD RDX, 121 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], 121 
OR BL, 118 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -83 
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], DIL 
CMOVNZ EAX, EAX 
MOV RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RBX] 
XCHG BX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
