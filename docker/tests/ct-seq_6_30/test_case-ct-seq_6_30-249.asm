.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, -8554 
SBB EBX, 94 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -17 
XCHG RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RDI] 
CMP RCX, 116 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -1 # instrumentation
SBB RCX, RDX 
DEC SIL 
SUB RAX, -1335022595 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVNS ESI, EDI 
MUL EDX 
ADD SIL, 85 # instrumentation
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOV AL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
CMOVNB EDI, ESI 
SBB RBX, RSI 
JNBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
SBB DIL, -38 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
CDQ  
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
