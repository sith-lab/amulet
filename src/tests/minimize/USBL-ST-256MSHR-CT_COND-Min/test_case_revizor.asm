.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND CL, 109 # instrumentation
AND RBX, 0b111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
AND RAX, 0b111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RAX] 
AND RSI, 0b111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -23 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 52 
AND RDI, 0b111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], AL 
AND RDI, 0b111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
AND RBX, 0b111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
AND RDX, 0b111111111111 # instrumentation
TEST word ptr [R14 + RDX], AX 
AND RDX, 0b111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b111111111111 # instrumentation
XOR byte ptr [R14 + RBX], 107 
AND RCX, 0b111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RCX, 0b111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RCX, 0b111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RCX] 
.bb_main.exit:

MFENCE # instrumentation
