.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -77 # instrumentation
ADC AL, 123 
INC BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -100 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 69 # instrumentation
CMOVNBE RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RBX] 
SUB RDI, -74 
ADC EAX, 1274944627 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 25 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], SI 
ADD SIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 98 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -44 
ADC CL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SUB AX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
