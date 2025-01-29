.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -38 
ADD EAX, -1866140587 
INC DL 
MOVSX SI, SIL 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EBX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
MOVZX RDX, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 76 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RAX] 
CMP DX, -32 
ADC EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
SUB RBX, RBX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], -14 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -125 
MUL ECX 
ADD DIL, 63 # instrumentation
CMC  
CMOVNP RDX, RSI 
MOVSX AX, SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
