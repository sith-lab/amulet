.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -113 # instrumentation
SBB CL, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], DX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 124 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], -51 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
DEC RDI 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
ADD SIL, -94 # instrumentation
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD RSI, 89 
CMP AX, -11275 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
SUB RCX, RDX 
CMOVNBE AX, DX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], BL 
CMP AL, 47 
CMP RAX, -982863791 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, -7 # instrumentation
SBB SI, -112 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
CMP BL, BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -63 
XCHG AL, AL 
MOV RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
