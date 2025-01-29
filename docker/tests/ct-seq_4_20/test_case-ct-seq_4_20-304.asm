.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 64 # instrumentation
SBB RAX, 97 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDI] 
ADC CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -9 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 125 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 50 
AND RSI, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RSI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], 28 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
INC AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
