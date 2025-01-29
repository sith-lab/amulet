.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 106 
CMOVS AX, DI 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
MOVZX EBX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 871905908 
CMP CL, 74 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
SETLE SIL 
MOV CX, DI 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], BL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND AL, 109 
AND AX, DX 
DEC CX 
AND RBX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], -29 
CMOVP RDX, RAX 
MUL DX 
ADD SIL, -21 # instrumentation
CMOVL RCX, RCX 
AND AL, 101 
OR DX, 1 # instrumentation
MOVSX EAX, DI 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], DL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDX 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
SUB RAX, -485243917 
OR RAX, 35 
SBB AX, -20030 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 97 # instrumentation
CMOVZ AX, CX 
SETZ BL 
ADD BL, BL 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
