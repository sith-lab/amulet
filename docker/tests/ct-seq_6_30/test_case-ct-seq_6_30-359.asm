.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RBX] 
LEA DI, qword ptr [RSI + RAX] 
ADD AL, -27 
SUB EAX, 1774055812 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
JMP .bb_main.1 
.bb_main.1:
CMP CL, 104 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
CMP BX, -116 
CMP CL, -59 
CMOVP RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
CMOVNP RBX, RSI 
INC CL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
MUL ESI 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
ADD CL, -57 
CMOVBE SI, DI 
AND RDI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RCX] 
LOOP .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
ADD SIL, 20 # instrumentation
SBB EBX, 24 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -91 
IMUL DX, BX 
XCHG ESI, EAX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 116 # instrumentation
MOV BX, SI 
SBB RAX, RSI 
CMOVNP RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
