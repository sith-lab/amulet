.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -84 # instrumentation
CMOVNP RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RCX] 
MUL DIL 
ADD DIL, 43 # instrumentation
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
INC RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 58 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 99 
MOV DIL, CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], -60 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
