.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
CMOVNP ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
MOVZX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
INC RCX 
SUB SIL, 44 
AND RSI, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RSI] 
CMOVNLE CX, DI 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
INC SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 117 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], BL 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
ADC SIL, 100 
IMUL RDX 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
SUB RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
