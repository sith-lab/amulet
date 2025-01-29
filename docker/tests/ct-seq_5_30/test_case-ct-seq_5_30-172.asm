.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
ADD BL, AL 
MUL RDX 
ADD SIL, 110 # instrumentation
MOV DIL, 37 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDI] 
IMUL EDI, ECX, 59 
SBB AL, -15 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 48 # instrumentation
SBB ESI, -50 
SUB AL, 104 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
SUB SI, DX 
MOVSX SI, BL 
SUB AL, -83 
CMOVNS RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDI 
SBB AL, -42 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL SI, DX, -108 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RCX] 
SUB CL, AL 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
INC CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -90 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
MOV DIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
