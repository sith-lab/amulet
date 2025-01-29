.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
ADD SIL, 56 # instrumentation
SETNBE CL 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 114 
AND RAX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], -3 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 42 
AND RCX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RCX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RBX] 
CMP DX, CX 
CLC  
CMOVNL DI, SI 
MOVZX RCX, CX 
MOV BL, 9 
AND RCX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 27 
XOR ESI, ESI 
XOR ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RCX] 
CMOVZ RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
CMP AX, -4 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 65 # instrumentation
SBB EBX, -19 
SETL CL 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
CMOVLE RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
CMOVNP EAX, ECX 
SETNS DIL 
AND RDI, -81 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -121 
MOVZX EBX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
