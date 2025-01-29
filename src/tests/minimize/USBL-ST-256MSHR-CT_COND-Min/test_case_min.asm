.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
.bb_main.0:
AND CL, 109 # instrumentation
AND RBX, 0b111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
AND RAX, 0b111111111111 # instrumentation
AND RSI, 0b111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
.bb_main.1:
AND RDX, 0b111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -23 
.bb_main.2:
AND RAX, 0b111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 52 
AND RDI, 0b111111111111 # instrumentation
AND RDI, 0b111111111111 # instrumentation
AND RBX, 0b111111111111 # instrumentation
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RAX] 
AND RDX, 0b111111111111 # instrumentation
AND RDX, 0b111111111111 # instrumentation
.bb_main.4:
AND RBX, 0b111111111111 # instrumentation
AND RCX, 0b111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RCX] 
AND RCX, 0b111111111111 # instrumentation
AND RDI, 0b111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RCX, 0b111111111111 # instrumentation
.bb_main.exit:

MFENCE # instrumentation
