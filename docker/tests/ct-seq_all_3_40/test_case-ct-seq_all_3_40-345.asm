.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST DL, BL 
SETP DL 
TEST RAX, -824772182 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
IMUL EDI, EAX 
ADC RAX, 1741225829 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EAX 
OR DX, SI 
TEST AX, -18989 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
AND EAX, -1958964310 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR EAX, -2140936391 
CMP AX, -25497 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 45 
MOVSX EAX, CX 
SETBE SIL 
MOVZX RDI, DIL 
CMOVBE DX, AX 
IMUL BX, BX 
ADD SIL, -85 # instrumentation
SETNZ DIL 
CMOVL ESI, EBX 
MUL RDI 
ADD DIL, 105 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 72 # instrumentation
CMOVL RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], RAX 
SETNS CL 
AND RDX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], SI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RSI] 
SBB RDI, RCX 
MOVZX RBX, BL 
CMOVNBE RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RSI 
TEST RBX, -496218789 
SUB AX, 84 
CMPXCHG DL, AL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -40 
OR RAX, 454757051 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
