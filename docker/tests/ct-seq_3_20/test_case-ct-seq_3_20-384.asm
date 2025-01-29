.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 82 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
CMOVNO EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RAX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RAX] 
SBB RAX, -72 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -3 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RBX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
