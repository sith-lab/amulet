.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EBX, EDX 
SETBE BL 
SETLE DIL 
OR EAX, -91 
MOVZX RSI, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1089361938 
SBB AL, 86 
SBB EDI, -41 
AND ESI, EDX 
XOR EDX, 24 
SETNS BL 
CMOVBE DX, SI 
AND AX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDI 
ADD RAX, RDX 
XOR BL, CL 
XOR CX, 101 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -100 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -54 # instrumentation
CMOVNB EBX, EDI 
XOR DL, DL 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
CMOVBE ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
ADD RAX, 1617852094 
IMUL SI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DIL 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
TEST SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RSI] 
OR SIL, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
XADD ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
