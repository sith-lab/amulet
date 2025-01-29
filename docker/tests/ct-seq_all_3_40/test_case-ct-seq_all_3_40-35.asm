.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], -38 
CMPXCHG RSI, RDX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
SUB DL, 59 
MOVSX ESI, CL 
CWDE  
STC  
DEC EBX 
CMOVB RAX, RSI 
TEST BL, BL 
SBB RAX, 1182673018 
SETZ DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -4 # instrumentation
CMOVNBE CX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 37 
XCHG RDX, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], DIL 
CMP RAX, 718847094 
INC DL 
XCHG EAX, EAX 
NOT CL 
ADC BX, DI 
AND RCX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RCX] 
ADD DL, BL 
XCHG DI, BX 
AND RDI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -71 # instrumentation
CMOVL ECX, EBX 
CMOVNLE SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
MOVSX RCX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RDI] 
TEST RDX, -47478534 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
ADD RAX, -1217512510 
CMOVNB SI, SI 
SBB RAX, -2048951301 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
