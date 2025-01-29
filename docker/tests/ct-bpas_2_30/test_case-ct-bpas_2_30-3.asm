.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 80 # instrumentation
CMOVL RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 108 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -765083463 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
ADD EDX, 67 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -31 
SUB DI, BX 
MOVZX EBX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 122 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -76 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -27 
LEA ESI, qword ptr [RDI + RDX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
MUL EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RSI] 
OR CX, 0b1000000000000000 # instrumentation
BSF BX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], -22 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 30 
SUB AL, -49 
SUB BL, 4 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
CMOVL ECX, EDI 
SUB EAX, -646901657 
CMOVP AX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
