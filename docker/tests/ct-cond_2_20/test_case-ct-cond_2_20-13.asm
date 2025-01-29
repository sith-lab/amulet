.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], 77 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RDX] 
MOV AL, -108 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
CMP RAX, 887043686 
BSWAP RCX 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], DIL 
SBB RAX, -30 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RSI] 
MOVSX EBX, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 45 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
