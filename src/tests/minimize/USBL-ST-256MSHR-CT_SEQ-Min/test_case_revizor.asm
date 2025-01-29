.intel_syntax noprefix
.test_case_enter:
LFENCE

MFENCE # instrumentation

.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b111111111111 # instrumentation
AND word ptr [R14 + RCX], 89 
AND RDX, 0b111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
AND RCX, 0b111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
AND CL, -92 # instrumentation
AND RAX, 0b111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
AND RAX, 0b111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
AND RDI, 0b111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDI] 
AND CL, -54 # instrumentation
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b111111111111 # instrumentation
XOR dword ptr [R14 + RDI], ECX 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
AND RDI, 0b111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
AND RAX, 0b111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], SI 
AND RAX, 0b111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], BX 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND AL, -11 # instrumentation
AND RSI, 0b111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RSI, 0b111111111111 # instrumentation
AND word ptr [R14 + RSI], -54 
AND RDI, 0b111111111111 # instrumentation
OR byte ptr [R14 + RDI], AL 
AND RBX, 0b111111111111 # instrumentation
AND byte ptr [R14 + RBX], 10 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND BL, 77 # instrumentation
AND RDI, 0b111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
.bb_main.exit:

MFENCE # instrumentation
