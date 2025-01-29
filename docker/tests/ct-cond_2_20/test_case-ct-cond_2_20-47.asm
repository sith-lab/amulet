.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 87 
AND RSI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RSI] 
NEG RDX 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -88 
CMOVNLE RCX, RAX 
ADC EAX, -1184970102 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
ADD DIL, 113 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
CMOVNP RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], CX 
OR EDX, 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
