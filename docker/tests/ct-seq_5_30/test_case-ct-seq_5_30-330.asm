.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
SBB AL, 111 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
IMUL BX, SI 
SBB RCX, RBX 
JMP .bb_main.1 
.bb_main.1:
CMP AX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
CMOVBE AX, DI 
IMUL SI, BX, 117 
XCHG SI, CX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -116 
SBB AL, DIL 
SUB SIL, 69 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], 56 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 123 # instrumentation
CMOVP BX, CX 
CMOVBE RBX, RDX 
ADD RAX, -1722456726 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
LEA RCX, qword ptr [RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -44 
ADD DIL, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], SI 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
AND RDX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RAX] 
CMOVNBE EAX, EDX 
CMOVB ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
