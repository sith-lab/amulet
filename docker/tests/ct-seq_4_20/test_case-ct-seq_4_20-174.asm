.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RAX] 
MUL DIL 
ADD DIL, 79 # instrumentation
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RSI] 
ADD DX, 67 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -98 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV EDX, 714215851 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
MUL SIL 
AND RBX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -43 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
DEC RBX 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
