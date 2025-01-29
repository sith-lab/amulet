.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
SUB CL, 120 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
ADD SIL, 64 
INC EDX 
MUL AL 
ADD BX, 84 
CMOVO EDI, ECX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 88 # instrumentation
SBB SI, AX 
XCHG AL, AL 
IMUL RCX 
ADD SIL, 55 # instrumentation
MOVSX RDI, DIL 
CMOVLE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RBX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
