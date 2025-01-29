.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, DL 
SBB DX, -14 
IMUL RDX 
AND RBX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RBX] 
SBB DX, -127 
JMP .bb_main.1 
.bb_main.1:
IMUL BX 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 104 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], -18847 
IMUL SI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
JNL .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX], 23 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], BX 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
JLE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 74 
ADD DX, 28 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RSI] 
CMOVZ CX, CX 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 55 # instrumentation
CMOVNL RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 29 
INC DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
