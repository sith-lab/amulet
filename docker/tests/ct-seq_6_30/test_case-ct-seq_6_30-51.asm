.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RBX, AX 
MOV EDI, ECX 
MUL DL 
ADD DIL, -43 # instrumentation
CMOVZ DI, CX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DI 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL RAX 
ADD RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RSI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
SUB AL, 10 
SBB RDX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
SUB RAX, 393441601 
ADD EAX, 109 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -89 # instrumentation
CMOVL EBX, EDI 
INC RDX 
INC CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 122 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
CMOVLE RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
IMUL DX, AX 
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 63 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
