.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -108 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
XCHG EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], -99 
MOV BX, -7126 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], -45 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
MOV AL, CL 
MOVSX RAX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
XCHG RBX, RAX 
MUL AX 
ADC SIL, 46 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
ADC BL, 36 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 187326876 
IMUL RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 31 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
CMOVO RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
