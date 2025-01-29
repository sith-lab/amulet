.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
CMP AL, DL 
CWD  
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOV CX, DX 
MOVZX EDX, SIL 
IMUL BX, AX, 4 
CMP EAX, 326524718 
INC SIL 
ADD RDI, -94 
JMP .bb_main.2 
.bb_main.2:
IMUL RCX, RDI, -125 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RBX] 
NEG BL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMOVNZ BX, SI 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMP BL, -15 
CMOVP SI, DX 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVSX SI, DL 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], 42 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 50 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 46 
IMUL DIL 
MOVSX EAX, DL 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
