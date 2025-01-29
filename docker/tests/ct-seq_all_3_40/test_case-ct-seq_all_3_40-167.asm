.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RCX] 
SUB AL, 104 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 41 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -62 
CMP AX, -6135 
IMUL DX, CX, 49 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RCX] 
CMC  
INC ECX 
MOVZX EDX, BL 
TEST SIL, -119 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 105 
ADC AX, -18769 
XADD BL, BL 
NEG AL 
ADD EAX, -154235157 
SETBE BL 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RAX] 
AND CX, -73 
SUB DI, SI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], ECX 
CMP AL, 36 
AND RSI, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RSI] 
MOV RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
TEST EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ECX 
SUB DIL, -26 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
XOR BX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
TEST ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
MOV SIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
