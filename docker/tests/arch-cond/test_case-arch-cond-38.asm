.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, 1352444574 
TEST ECX, 411539291 
SBB AX, DX 
CMOVO RDX, RBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
STC  
NOT EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], ECX 
XOR DL, 93 
AND RDX, -116 
CMP SI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], AL 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -125 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], ECX 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
SUB RAX, RBX 
IMUL EDI, EAX 
SUB RBX, 84 
CMOVNS RAX, RDI 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
SUB AL, -85 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
XOR ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
XOR DIL, CL 
CMOVL RDI, RSI 
CMOVNP RBX, RCX 
JMP .bb_main.4 
.bb_main.4:
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RCX] 
XOR DIL, -13 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
MUL EBX 
MOV AL, 102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
