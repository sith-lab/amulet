.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -110 # instrumentation
CMOVNP EBX, EDI 
CMOVP ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -98 
MOVZX RSI, DI 
AND RDX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EBX 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 4 # instrumentation
MOVZX EBX, DI 
CMOVLE ECX, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 18432 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], 627193795 
SBB AL, 59 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
