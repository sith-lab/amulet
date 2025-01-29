.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR DIL, byte ptr [R14 + RSI] 
AND ECX, -34 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 58 
NEG AL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], AX 
SETNP BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
SUB DX, -17 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
CMP BL, BL 
XOR RBX, RCX 
SBB ESI, -60 
AND RDX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDX] 
SBB SIL, 24 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 83 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND EAX, 449670638 
DEC ECX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
XOR RAX, -2114521434 
OR BL, -59 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
XOR BL, CL 
XADD BL, DL 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
SBB DX, -52 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -47 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
OR ESI, 92 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1348107535 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
