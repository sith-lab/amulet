.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], -7 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], -53 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], -66 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DIL 
NEG RCX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, 32 # instrumentation
ADC SI, -34 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -66 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -55 
XCHG DI, AX 
MOV RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -17 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RCX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
MOVZX EBX, AL 
MOVZX DX, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
