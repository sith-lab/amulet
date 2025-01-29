.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], BL 
CMOVL EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], EDI 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -17 
CMOVNP RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], 38 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
ADD AL, -17 
CMOVNZ EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RBX] 
SUB RAX, 420852018 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
SUB SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
