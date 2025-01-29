.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EAX, -1506478515 
SUB SI, 6 
CMP EAX, -1139291739 
CMOVZ EDX, ESI 
CMPXCHG CL, BL 
MOVZX RDX, CX 
CMOVNBE CX, CX 
XOR BL, -62 
SETZ DL 
SETNP CL 
ADC RSI, 31 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
DEC EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], 36 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST RAX, 1968213053 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
MOV BL, -95 
SBB SI, SI 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RBX] 
CMP EDX, 43 
CMOVO AX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND AL, -38 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
XCHG AX, AX 
ADD AL, 33 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
TEST RDX, RAX 
CMP AX, -3059 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 90 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EAX 
SETBE CL 
ADD DL, CL 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RAX 
CMOVBE DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
