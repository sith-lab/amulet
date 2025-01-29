.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AL, 8 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -63 
MOVSX EDI, SI 
CMOVLE ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], -98 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -21 # instrumentation
SBB RAX, 107 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
SUB SIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD AL, -125 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
CMOVNB RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -60 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
