.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
ADC EAX, EDI 
BSWAP RBX 
XCHG SI, SI 
ADC AL, 46 
OR DL, 1 # instrumentation
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -66 # instrumentation
SBB AX, 24011 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], BL 
ADD BX, DI 
XCHG SIL, DIL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -127 # instrumentation
CMOVNS EDI, EDI 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], -109 
SBB ECX, 6 
AND RDX, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RDX] 
SUB DI, CX 
XCHG ESI, EAX 
JS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 58 # instrumentation
CMOVL RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDI] 
DEC EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD DI, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
IMUL RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RDX 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
LEA ECX, qword ptr [RCX + RBX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
CMP EAX, 126 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
