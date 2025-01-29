.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -118 # instrumentation
LEA DI, qword ptr [RAX] 
CMOVNBE ESI, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
XCHG RAX, RAX 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RAX] 
ADD CL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
