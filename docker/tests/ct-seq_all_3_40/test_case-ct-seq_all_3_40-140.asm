.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RSI] 
MOV RCX, RBX 
ADD RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 99 
OR RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RCX] 
CMC  
AND AL, CL 
OR SI, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
AND DI, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RBX] 
SBB CL, BL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 92 # instrumentation
CMOVNS EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 83 
SETB BL 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -89 
AND AL, 77 
AND RDI, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDI] 
IMUL DX, DI, -47 
CWDE  
SBB DIL, -17 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
ADC AL, AL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 37 # instrumentation
SETBE DL 
CLD  
TEST AL, -112 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
CMOVZ EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], CX 
XOR AL, 103 
NEG EAX 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
ADC AL, AL 
NOT DIL 
ADC EBX, 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
