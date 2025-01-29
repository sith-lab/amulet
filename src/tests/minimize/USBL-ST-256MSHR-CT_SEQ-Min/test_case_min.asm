.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
.bb_main.0:
AND RCX, 0b111111111111 # instrumentation
AND RDX, 0b111111111111 # instrumentation
AND RCX, 0b111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
AND CL, -92 # instrumentation
AND RAX, 0b111111111111 # instrumentation
AND RAX, 0b111111111111 # instrumentation
AND RDI, 0b111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
AND CL, -54 # instrumentation
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b111111111111 # instrumentation
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b111111111111 # instrumentation
AND RDI, 0b111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
AND RAX, 0b111111111111 # instrumentation
AND RAX, 0b111111111111 # instrumentation
.bb_main.3:
AND AL, -11 # instrumentation
AND RSI, 0b111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RSI, 0b111111111111 # instrumentation
AND RDI, 0b111111111111 # instrumentation
AND RBX, 0b111111111111 # instrumentation
.bb_main.4:
AND BL, 77 # instrumentation
AND RDI, 0b111111111111 # instrumentation
.bb_main.exit:

MFENCE # instrumentation
