.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -86 # instrumentation
CMOVO EBX, EBX 
SUB DX, -63 
NOT EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RDI] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
ADD BL, AL 
CMP CL, 53 
SUB RAX, 1992036554 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RBX 
SETS SIL 
CMOVZ RSI, RSI 
XCHG SIL, AL 
OR SIL, 86 
ADC AX, -28852 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RBX] 
CMP ECX, ECX 
TEST AL, DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
ADC RBX, -76 
AND RSI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], SI 
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
XOR AX, -16816 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 65 
OR DX, 23 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
OR DL, CL 
CMOVNL EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], -118 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -17743 
ADC AL, 111 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
