.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 104 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], SIL 
STD  
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 53 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
CMP CX, -93 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
MOV RBX, -5738474937557980726 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -41 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
