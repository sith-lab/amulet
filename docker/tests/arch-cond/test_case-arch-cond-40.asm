.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EAX, -1849961138 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
MOVZX ESI, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX] 
ADD SIL, 105 # instrumentation
CMOVNZ RSI, RSI 
OR AX, -7103 
SETS BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], CL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, -124 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], -75 
AND RSI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RSI] 
XOR AL, DL 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], EBX 
SBB EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], 90 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
AND RDX, -56 
NOT DL 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -1317212220 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 97 # instrumentation
CMOVNLE RDX, RBX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
CMOVZ EDI, EDI 
OR AX, 25353 
CMOVNP DX, DI 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
SUB RAX, 49 
CMOVNS SI, CX 
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 56 # instrumentation
SBB CX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
CMOVZ EBX, ESI 
LEA DX, qword ptr [RDX + RBX + 29243] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
AND RAX, RCX 
SETS CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
