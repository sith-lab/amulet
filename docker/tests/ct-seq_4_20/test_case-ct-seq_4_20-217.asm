.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
SBB AL, -113 
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DIL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], BX 
CMOVNLE ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 4 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 63 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
MOVZX RBX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RSI 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -29 # instrumentation
CMOVNP EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], BX 
CMOVNL ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
