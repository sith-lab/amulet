.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -753734576 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
XOR RAX, -426070588 
TEST RAX, RAX 
CMOVO AX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
IMUL EDI 
ADD DIL, -92 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], 1786141987 
CMOVZ ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RSI] 
NOT BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST AX, -21585 
XOR EAX, 62103139 
AND RDI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDI] 
MOVSX ECX, BL 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
CMOVB ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RDX 
AND DL, CL 
ADD DIL, 86 # instrumentation
LAHF  
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 97 
XADD CL, BL 
CMOVNZ RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
MOVSX RAX, SI 
CWDE  
IMUL BX, DX 
LEA ESI, qword ptr [RBX + RDX] 
AND DX, DX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST DX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 23 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
CMOVB RDI, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
