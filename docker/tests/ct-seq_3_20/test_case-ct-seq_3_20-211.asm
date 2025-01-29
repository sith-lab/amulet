.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RSI, 4302160458061442574 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDI] 
CMP AL, -124 
AND RDX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RDX] 
CMP EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 16 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
IMUL AL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 30710 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -6 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
