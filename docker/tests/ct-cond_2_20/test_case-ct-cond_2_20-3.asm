.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -21 
SUB RAX, -319356687 
ADC AL, AL 
AND RCX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RCX] 
CMOVB ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -85 # instrumentation
SBB AL, 35 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
OR DX, 1 # instrumentation
MOVZX SI, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -65 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
