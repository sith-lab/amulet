.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 127 # instrumentation
ADC SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
XOR AL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 5 
CMOVO EBX, EDX 
XCHG BX, AX 
ADD EAX, EDX 
OR ECX, 105 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
XCHG CX, SI 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
SUB DIL, -61 
CMOVLE AX, SI 
ADC SIL, CL 
SBB EAX, -1929760565 
IMUL SI, AX, 76 
ADC CX, -34 
CMOVBE RBX, RAX 
CMOVNB EAX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RBX 
TEST EDI, 574400578 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
MOV SI, 14691 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
DEC BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDI] 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
ADD DIL, -104 # instrumentation
CMOVP EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND AX, -29919 
INC CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RSI] 
NOT CL 
ADC RCX, 60 
NEG CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
