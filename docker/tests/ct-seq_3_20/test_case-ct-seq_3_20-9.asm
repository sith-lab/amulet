.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
CMOVNLE RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], EBX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
ADD RCX, -108 
AND RDI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDI] 
CMP SIL, 88 
NEG DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 104 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
NEG AL 
CMC  
AND RBX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
