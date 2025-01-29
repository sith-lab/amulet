.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 112 # instrumentation
ADC RAX, -607305080 
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], DI 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
MOVZX RDX, DL 
CMP RAX, -104 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
ADC AL, -18 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -34 # instrumentation
SETNS BL 
DEC CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
MUL EBX 
MUL RSI 
OR DIL, -49 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 104 
SETLE DL 
SBB RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
IMUL RDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RDI] 
TEST RSI, -972305427 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], EBX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], CX 
ADD AL, AL 
IMUL CX 
TEST AX, -1866 
TEST DIL, 8 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDI], DI 
AND RCX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], RDI 
SETNO DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -21957 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EAX 
CMOVZ SI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
XOR SIL, BL 
CMOVNS EBX, EDX 
MUL RAX 
AND DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
