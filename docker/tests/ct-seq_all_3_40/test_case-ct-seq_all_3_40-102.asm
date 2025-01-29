.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RDX] 
XOR CX, CX 
TEST RSI, RBX 
CMOVNLE ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG CL 
SBB DIL, 50 
XOR DIL, 75 
ADC AL, 104 
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
MOV ESI, EDX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
TEST AL, 28 
OR DI, -63 
NOT SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
ADC SI, BX 
SETZ AL 
CMOVNP RCX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
MUL RCX 
LEA RDX, qword ptr [RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RSI] 
CMOVP RBX, RSI 
ADD DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
SETNB DIL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD AL, 92 
MOVSX EDX, SIL 
CMP SIL, -82 
OR SI, 32 
OR CL, -111 
ADC SI, -26 
MOVSX DI, DL 
CMP EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
CMPXCHG AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
