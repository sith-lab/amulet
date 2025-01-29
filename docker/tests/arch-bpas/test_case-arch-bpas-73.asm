.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 73 # instrumentation
SETNO BL 
ADD RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
MOVSX ESI, AX 
MOVSX RDI, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RBX], RDI 
BSWAP RBX 
XCHG DI, BX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
TEST CX, BX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 31 # instrumentation
SETLE BL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EAX 
CBW  
MOVZX EAX, CL 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
SETNLE BL 
TEST DX, DI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDX] 
TEST AX, -8443 
JMP .bb_main.3 
.bb_main.3:
MOV BL, 102 
ADD RCX, -72 
SUB DI, -119 
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
SBB DIL, -109 
CMP BL, 110 
CWD  
XADD AX, SI 
AND EAX, 1522385103 
INC RSI 
OR DIL, 73 
MOVSX RAX, BL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
CMOVNLE RBX, RDX 
CMP EAX, 1146317592 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
