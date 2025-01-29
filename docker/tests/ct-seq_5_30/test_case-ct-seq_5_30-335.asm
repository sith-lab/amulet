.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 111 # instrumentation
CMOVNP RDI, RCX 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], -126 
SBB RAX, 1702788376 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RAX] 
MUL SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL DL 
DEC EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
ADD DIL, -83 # instrumentation
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], -45 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
CMOVNL RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -48 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -30 
CMP RCX, -127 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -116 # instrumentation
XCHG SIL, BL 
CMOVZ RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], EAX 
IMUL ECX, EBX 
MOVSX EDI, CX 
XCHG SI, DX 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
