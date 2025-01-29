.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BL, -27 # instrumentation
AND RDX, 0b111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
AND RSI, 0b111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RSI] 
AND RBX, 0b111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], BX 
AND RAX, 0b111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], 14 
AND RAX, 0b111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RAX] 
AND RAX, 0b111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RAX] 
JNO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -9 
AND RDX, 0b111111111111 # instrumentation
OR qword ptr [R14 + RDX], 77 
AND RBX, 0b111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND BL, -80 # instrumentation
AND RBX, 0b111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
AND RSI, 0b111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
AND RBX, 0b111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], BX 
AND RSI, 0b111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RSI] 
AND RBX, 0b111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDX 
.bb_main.exit:

MFENCE # instrumentation
