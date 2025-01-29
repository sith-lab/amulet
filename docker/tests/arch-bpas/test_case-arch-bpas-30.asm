.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -53 # instrumentation
SETNO DIL 
CMOVS RBX, RAX 
TEST RAX, 1818711778 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
MOVSX EDI, CL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
ADD DIL, 2 # instrumentation
SETNS AL 
AND DL, CL 
CMOVNL CX, CX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RAX] 
CBW  
OR SIL, -28 
ADD RAX, 2060641583 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 3 
CMP ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RAX] 
CMOVNZ ECX, EBX 
SETNLE DIL 
CMOVNP RBX, RSI 
XOR AL, 122 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RAX] 
SETLE BL 
JMP .bb_main.2 
.bb_main.2:
CMP ECX, EAX 
XOR RAX, -85 
SETNP DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], SIL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -18 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RDI 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
CMOVNL SI, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RCX] 
TEST EAX, -1177934683 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
TEST RAX, -1998998889 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
