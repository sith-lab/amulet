.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -23 # instrumentation
SETLE AL 
CMOVNBE ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
SBB EAX, EDX 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RCX] 
XOR AX, 11529 
NEG RCX 
CBW  
SUB CL, CL 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
MOV DL, 57 
SUB EAX, 508490051 
AND RDX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RDI] 
SETO BL 
AND DL, BL 
CMOVNB SI, CX 
SBB ESI, -10 
IMUL RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -14 
CMOVNO RCX, RCX 
CMOVNZ RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], -28 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -12745 
ADD AL, -67 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
ADD DIL, 23 # instrumentation
CMOVZ EAX, EAX 
MOV RCX, 7579032357640730817 
IMUL ESI, ECX, 49 
ADD SIL, 68 # instrumentation
SETNP SIL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], BL 
CMOVS ESI, EAX 
LEA EAX, qword ptr [RSI + RAX + 20931] 
CMOVP RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
ADD DIL, -93 # instrumentation
CMOVBE RDI, RDI 
XCHG RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
