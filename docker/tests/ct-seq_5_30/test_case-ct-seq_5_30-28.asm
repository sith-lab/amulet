.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 26 # instrumentation
SBB RAX, -1019413814 
AND RAX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RAX] 
MOVZX EDI, BL 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 127 # instrumentation
CMOVNLE EDX, EDI 
ADC AL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
SBB SIL, BL 
AND RSI, 0b1111111111111 # instrumentation
IMUL CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], DI 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 31 # instrumentation
CMOVB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RBX] 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -87 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
ADD AX, -11 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 71 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EDI 
CMOVB ECX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
ADD DIL, 90 # instrumentation
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RSI] 
INC CL 
BSWAP RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
