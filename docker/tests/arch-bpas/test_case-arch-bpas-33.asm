.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 101 # instrumentation
CMOVZ EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDI], 66 
OR DL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RDI] 
ADD EAX, 1262580642 
OR EDI, -102 
XADD CX, CX 
OR AX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -113 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EDX 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RSI] 
XCHG AL, DL 
SETB BL 
CMOVLE EDX, EDI 
MOV EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], 47 
AND RSI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], AL 
ADC EDI, -15 
LEA RBX, qword ptr [RDI] 
CMOVNBE ECX, EAX 
SETZ DL 
JMP .bb_main.3 
.bb_main.3:
XOR EAX, EAX 
CMP RAX, 2034048359 
SETP BL 
LEA ECX, qword ptr [RDI + RCX + 524] 
CMOVO ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 127 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
BSWAP RBX 
AND AL, -114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
