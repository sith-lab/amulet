.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
XADD BL, DL 
NOT CL 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDI], 36 
CMOVZ RBX, RDI 
SBB RDI, 2 
AND RCX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RCX] 
MOV SI, -23819 
MOVSX AX, BL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
IMUL RCX 
ADD SIL, -46 # instrumentation
MOVSX BX, DL 
MOV CL, AL 
CMOVP BX, AX 
CMPXCHG AL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
MOV AL, 56 
CMP DL, -125 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 119 # instrumentation
SBB AX, -10481 
SUB RBX, RDI 
MUL EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
ADD AL, 102 
AND RCX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RCX] 
TEST DIL, 4 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], RDX 
CMOVNL EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RSI] 
XOR AL, AL 
CMOVL ECX, ESI 
TEST EDI, EAX 
XOR ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
MOVZX EAX, DL 
CMOVNL BX, BX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], -59 
MOV RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
