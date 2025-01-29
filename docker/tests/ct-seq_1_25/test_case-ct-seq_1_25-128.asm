.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
CWD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], EDI 
MOVSX BX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RCX 
MOVSX ESI, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RAX] 
IMUL RDX, RBX, 18 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 10 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], -86 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDX] 
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
LEA RSI, qword ptr [RBX + RAX] 
CMP RSI, 112 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
