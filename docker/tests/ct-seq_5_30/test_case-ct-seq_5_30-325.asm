.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC SI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
ADD DIL, -33 # instrumentation
DEC BL 
SBB EAX, -1274483268 
INC RDI 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 110 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RBX] 
XCHG RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], CL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
LEA ESI, qword ptr [RBX + RAX + 62225] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
CMOVBE RAX, RDI 
MOVZX RAX, BX 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -74 # instrumentation
ADC EAX, 1549161193 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SAHF  
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -63 
DEC ECX 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
ADD DI, -19 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], DL 
CMOVL RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
