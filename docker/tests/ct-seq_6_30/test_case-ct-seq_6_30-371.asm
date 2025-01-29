.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RDX, qword ptr [RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
OR DL, 1 # instrumentation
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], AX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RBX 
CMP DX, DI 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
CMP EDI, -28 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -92 # instrumentation
CMOVNS EDX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
ADD EDX, 17 
CMOVB ECX, ECX 
MOVZX EAX, CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EAX 
CMP AX, 15610 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
CMP EDI, EDI 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
NEG SI 
CMOVZ RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
