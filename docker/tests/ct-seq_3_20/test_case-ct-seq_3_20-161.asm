.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], -14 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP AL, -94 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], -88 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], 77 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RSI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 59 # instrumentation
CMOVNZ EDI, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 8 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], AL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
