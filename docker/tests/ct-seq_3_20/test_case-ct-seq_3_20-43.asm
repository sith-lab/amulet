.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 59 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
CMOVBE ESI, EDX 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 68 # instrumentation
CMOVO ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -58 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
ADD DIL, 71 # instrumentation
CMOVLE RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -95 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -52 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
