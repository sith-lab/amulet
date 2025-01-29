.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 125 
STC  
XCHG AL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
ADD DX, -56 
AND RAX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RAX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 118 # instrumentation
SBB RAX, -579157162 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 76 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -20 
SBB AX, -13641 
SBB AX, -15020 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
CMOVNBE RSI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
