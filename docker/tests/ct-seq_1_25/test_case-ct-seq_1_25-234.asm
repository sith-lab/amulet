.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RCX] 
CMOVNZ SI, AX 
ADD DIL, -105 
SBB EAX, -1874840608 
ADC AL, 96 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 108 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], 105 
MOVSX DI, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 19 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
DEC DL 
INC DL 
IMUL AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDI] 
ADD RDX, -61 
MUL RDI 
ADD RAX, 1056640479 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 87 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
