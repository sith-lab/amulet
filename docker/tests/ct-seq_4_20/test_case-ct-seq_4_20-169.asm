.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
ADD BL, DL 
DEC ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
