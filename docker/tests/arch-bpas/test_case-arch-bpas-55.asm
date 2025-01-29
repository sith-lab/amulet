.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -9 # instrumentation
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDI] 
SETNP AL 
XOR EAX, 504846589 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], -3 
XADD EDX, EDI 
AND BX, AX 
MOVSX ECX, SIL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 55 # instrumentation
MOV SI, BX 
CMOVNL DI, CX 
MOVZX ECX, BX 
TEST AX, SI 
AND RDX, RBX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
TEST BX, 30134 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], ECX 
CMP EAX, -62 
XADD EBX, EDX 
OR RCX, RBX 
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDX] 
BSWAP EBX 
JMP .bb_main.3 
.bb_main.3:
CMPXCHG CL, BL 
ADC ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
MOVZX EAX, SI 
MOV AL, 95 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
INC CL 
MUL DX 
IMUL SI 
MOVSX RDX, SI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
MOVSX BX, CL 
CMP DL, -46 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
