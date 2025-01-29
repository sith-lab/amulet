.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], -13 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 52 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], DI 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD SIL, 105 # instrumentation
CMOVNBE RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -95 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
