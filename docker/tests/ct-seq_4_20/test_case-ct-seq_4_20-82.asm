.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 47 # instrumentation
MOVZX EBX, BL 
ADC ESI, -83 
MOV RSI, RAX 
MUL SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RBX] 
CMOVNLE RDX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], -121 
MUL EBX 
ADD DIL, 104 # instrumentation
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], AL 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RCX] 
CMOVBE RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
