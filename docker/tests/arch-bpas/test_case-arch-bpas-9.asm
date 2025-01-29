.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RSI, -15 
AND RSI, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 112 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
NOP  
CMOVNS EBX, ECX 
XOR EAX, 522811034 
JMP .bb_main.1 
.bb_main.1:
CMP DX, AX 
XADD DI, DI 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
IMUL EDI, EBX, -118 
ADD SIL, 12 # instrumentation
CMOVNP DX, BX 
DEC BL 
MOV EDI, EBX 
SETS BL 
SETNB CL 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], DIL 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ECX 
SETB DL 
CMP RCX, RAX 
ADD RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RAX 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
AND DL, -46 
XOR BL, CL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
SETLE BL 
ADC SIL, -127 
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RAX] 
SUB EAX, -105 
SETP AL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 4 # instrumentation
SETBE CL 
LEA BX, qword ptr [RDX + RDX + 18111] 
MOVZX EDI, SI 
AND RSI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
