.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
MOVZX RAX, AX 
CMOVNL EBX, EDI 
CMOVBE ECX, ESI 
MOVZX CX, CL 
XOR CX, -55 
ADD DL, DIL 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
SETNL AL 
ADD RCX, -18 
CMOVLE RAX, RDI 
OR CX, DI 
XCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], DI 
CMOVBE RDI, RDX 
MOVZX DI, BL 
CMOVNS EAX, ESI 
SETNBE CL 
CMOVS RBX, RBX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 64 
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
CMOVP EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], DI 
AND DX, DX 
SETBE CL 
AND CL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RCX 
SBB SIL, -67 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
MOV SI, 29729 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], BX 
SETO CL 
NEG AL 
INC RSI 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
MOV RAX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
