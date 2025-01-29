.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RBX] 
ADD EBX, EDI 
SBB AX, -29453 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
NEG ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RCX] 
CMOVNB RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BSWAP RSI 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
MOV ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], SIL 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
SUB EAX, 621549525 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -1 # instrumentation
CMOVNL RDI, RAX 
CWD  
SBB BL, CL 
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP RAX, -143989010 
ADD RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
MOVSX ECX, BX 
CMOVBE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
CMP AL, -13 
LEA RDI, qword ptr [RDI + RBX + 56368] 
DEC BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
