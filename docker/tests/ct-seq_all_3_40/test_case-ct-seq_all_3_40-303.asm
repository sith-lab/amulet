.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RSI 
SUB EDI, -108 
SETO AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DIL 
AND EAX, 289883314 
AND RCX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RCX] 
NEG CL 
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], DI 
AND EAX, -133465169 
ADD SIL, 64 
IMUL RAX, RDX 
ADD BX, 84 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -10183 
LEA RDI, qword ptr [RDI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG ESI, EBX 
SUB RSI, 109 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDI 
CMOVNLE EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], 77 
XOR BX, BX 
ADD AX, -9102 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
SETLE CL 
ADD EAX, -387389536 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
SUB ECX, 71 
TEST BL, -109 
NEG DL 
CMOVLE RDI, RAX 
SETNO CL 
SETLE DL 
TEST SIL, DL 
ADC DL, -4 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
