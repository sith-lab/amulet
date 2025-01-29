.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -25 
CMP RDI, 57 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
DEC DL 
IMUL RCX, RCX, -7 
ADD SIL, 118 # instrumentation
CMOVZ AX, AX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
CMOVNB RBX, RAX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
CMOVL RDX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 120 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RDI 
AND RCX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -111 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
