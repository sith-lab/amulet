.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
ADD AL, AL 
MOVSX EAX, DL 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RAX] 
XCHG RDI, RDI 
SUB AL, AL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 94 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -87 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -60 
CMOVL EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RAX] 
IMUL EDI, EDI, -102 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], 4 
CMOVZ RDI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
