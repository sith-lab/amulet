.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -111 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], SIL 
CMOVZ RCX, RAX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RCX] 
MOV EAX, 1355354237 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
AND RBX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
