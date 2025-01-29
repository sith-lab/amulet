.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
XCHG RBX, RAX 
MOV RAX, RDX 
XCHG EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 505792100 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
SUB DX, BX 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RAX] 
SUB AL, -39 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NEG DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
IMUL ECX, EDI, -121 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -105 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
MOV DL, 24 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
LEA ESI, qword ptr [RBX + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], SIL 
MOV AL, -101 
SBB DIL, 109 
ADD RAX, -1342750091 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
