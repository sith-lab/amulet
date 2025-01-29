.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -5 # instrumentation
XCHG ECX, ECX 
CMOVB RBX, RDI 
SUB DIL, -17 
CMOVP DI, SI 
TEST AX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], 42 
MUL RCX 
SETO AL 
SUB EAX, 1285850353 
MOVSX ESI, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
ADD RDX, -90 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMPXCHG ECX, ESI 
ADC EAX, 1568620152 
MOVZX EDI, CX 
SETNLE BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
CMP DL, BL 
CMOVNZ RDI, RAX 
SETNL CL 
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
TEST RAX, -308212622 
OR DIL, 69 
SETP CL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVSX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
CMOVZ RBX, RDI 
MOVSX EDI, DX 
OR DL, AL 
MOVSX DI, SIL 
OR CX, -56 
IMUL RCX, RDX, 81 
AND RBX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RBX], -126 
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
CMPXCHG AL, BL 
XOR AX, DX 
MOVSX EAX, BL 
DEC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
