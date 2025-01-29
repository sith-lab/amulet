.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 17 # instrumentation
CMOVNZ SI, BX 
STD  
CMOVNS AX, SI 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], ECX 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
MOV ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], SIL 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], RCX 
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RDI] 
CMP RDX, -47 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], DI 
CMOVZ SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
