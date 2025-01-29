.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
CMP ESI, -112 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RDX] 
MOVZX CX, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
CMOVBE EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
