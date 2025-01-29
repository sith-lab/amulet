.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 100 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], -57 
OR DX, 0b1000000000000000 # instrumentation
BSF BX, DX 
ADD SIL, 57 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RCX] 
CMOVS RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 59 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -72 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ESI 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
CMOVLE ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDX] 
ADD BX, CX 
AND RAX, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 64 
SBB BL, 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
