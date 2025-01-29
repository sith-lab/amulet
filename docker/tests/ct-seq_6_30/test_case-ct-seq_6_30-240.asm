.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 76 # instrumentation
ADC RCX, -85 
INC EAX 
MOVZX EDI, BL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -111 # instrumentation
CMOVNS CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RAX] 
ADC DIL, -71 
CMOVNLE RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 15 
ADD BX, 21 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
IMUL SI, DX, 22 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RSI] 
CMP ESI, -108 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -99 # instrumentation
CMOVNLE DI, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], -88 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], SIL 
AND RCX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RCX] 
CMP AL, 20 
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
XCHG RAX, RAX 
CMOVO EDI, EBX 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
IMUL ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
CMOVB ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EAX 
JMP .bb_main.5 
.bb_main.5:
CLC  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RCX 
CMOVO CX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
