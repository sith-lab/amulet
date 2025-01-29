.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 78 
NOT EDI 
AND EDX, -15 
NEG SIL 
SETNZ BL 
SBB AL, BL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND SI, -60 
CMOVNL EDI, EBX 
XCHG DL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
IMUL RBX, RBX, -107 
XADD SIL, CL 
SUB EBX, ECX 
AND EDX, 104 
CLC  
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR DL, byte ptr [R14 + RBX] 
SETNL DL 
XOR DX, 4 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RCX] 
AND RAX, -104147989 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
CMPXCHG DI, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
TEST AL, 79 
MOV ESI, 1121487640 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RSI] 
CMOVO EDI, EDX 
XCHG RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -88 
SBB RAX, 71090264 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CMOVNBE CX, AX 
XOR CX, 65 
SETZ AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
