.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], SIL 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
SUB DI, DX 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADC SI, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], -116 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
XCHG DL, CL 
CMOVNL RDX, RAX 
CMOVNLE RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 84 # instrumentation
ADC AX, -22713 
IMUL RDX 
ADD SIL, 6 # instrumentation
CMOVZ EAX, EDI 
IMUL DX 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
CMOVP EDX, EAX 
ADD RAX, -1608625075 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -25 
AND RDX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDX] 
MOVZX EBX, SI 
ADD AL, -32 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ECX 
CMOVNLE AX, DI 
LEA EDX, qword ptr [RCX + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RBX] 
CMP RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
