.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], SI 
AND RAX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
SBB AL, -30 
AND RDI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDI], 20 
ADD DIL, -78 # instrumentation
CMOVLE CX, BX 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], DIL 
CMOVNBE RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], 44 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 70 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
MOVZX AX, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDI 
SUB RDI, 44 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
