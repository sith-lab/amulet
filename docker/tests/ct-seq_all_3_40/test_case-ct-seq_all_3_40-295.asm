.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BX 
DEC RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD ESI, dword ptr [R14 + RSI] 
SETBE CL 
IMUL RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RSI] 
ADD DL, -80 
AND AL, 58 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], 6 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
ADD DIL, -14 # instrumentation
SETLE BL 
CMOVBE BX, DI 
SUB AX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -74 
SBB RDI, RDX 
SETNS DIL 
XCHG DL, AL 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
MOVSX DI, AL 
MOVZX ECX, CL 
MOVSX RCX, SIL 
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], CL 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
MOVZX DX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RBX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RBX] 
OR AL, -102 
INC DIL 
ADD AL, 55 
MOV AL, AL 
NOT ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], RAX 
SETNL CL 
SETS SIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
