.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
MOV RAX, 4065404580004797236 
MOV ECX, -783352505 
SAHF  
ADD DL, -34 
OR AL, 27 
ADC DX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 102 
SUB DIL, 4 
CMOVB RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
XOR AX, 7087 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
CMOVNL EAX, EDI 
SETNBE CL 
IMUL RSI 
XADD DX, DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST EAX, -983414281 
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
SETO AL 
ADD BL, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
MOVZX EDI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RAX] 
XOR SI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RCX] 
ADD SIL, 6 # instrumentation
SETBE DL 
XADD DIL, SIL 
NOP  
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], 107 
TEST EDX, 206337005 
CMOVO EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
ADD RDI, 98 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RCX] 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
