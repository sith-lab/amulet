.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b111111111111 # instrumentation
AND qword ptr [R14 + RDI], 87 
AND RAX, 0b111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RAX] 
AND RDI, 0b111111111111 # instrumentation
AND word ptr [R14 + RDI], -91 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RBX 
AND RDI, 0b111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 103 
AND RAX, 0b111111111111 # instrumentation
AND RAX, qword ptr [R14 + RAX] 
AND RAX, 0b111111111111 # instrumentation
TEST word ptr [R14 + RAX], 27568 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RSI, 0b111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
AND RDI, 0b111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 55 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -30 
AND RDX, 0b111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], DIL 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b111111111111 # instrumentation
XOR byte ptr [R14 + RBX], -121 
AND RAX, 0b111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
AND RBX, 0b111111111111 # instrumentation
TEST byte ptr [R14 + RBX], DL 
AND RAX, 0b111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RAX 
AND RBX, 0b111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RSI 
.bb_main.exit:

MFENCE # instrumentation
