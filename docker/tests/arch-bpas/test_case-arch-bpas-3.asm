.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], SI 
AND ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
XOR AX, -9095 
TEST CL, -40 
CMOVLE RBX, RAX 
ADD SIL, 35 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
BSWAP RDI 
TEST RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
OR EAX, -762989441 
CMC  
JB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
ADD DIL, -53 # instrumentation
SETLE SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
SETL DL 
CMOVO DI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 62 # instrumentation
CMOVZ DX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], EBX 
XCHG AX, AX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 121 
SETNLE CL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
JMP .bb_main.4 
.bb_main.4:
CMP RDX, -63 
ADD DL, 32 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RBX] 
CMOVNS RCX, RCX 
MOV EAX, -216692890 
MOV CL, DL 
JMP .bb_main.5 
.bb_main.5:
SUB EDX, 35 
SETNLE CL 
CLC  
MOVSX RCX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], 107 
CMOVZ CX, AX 
ADC RBX, -84 
SBB SI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
