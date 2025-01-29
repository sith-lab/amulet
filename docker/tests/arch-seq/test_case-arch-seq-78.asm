.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
OR DL, 1 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
SETBE DL 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RDX] 
IMUL SI 
LEA RDI, qword ptr [RSI + RDI + 64015] 
TEST BX, 32130 
IMUL EAX, EBX 
ADD RCX, RCX 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
TEST DIL, 104 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], AX 
MOVSX EAX, DL 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
SETZ CL 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -80 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], 91 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 68 # instrumentation
CMOVLE DI, BX 
INC DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], SI 
CMOVP AX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DX 
SETNB CL 
SUB DIL, 57 
MUL DL 
XCHG RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
SUB DIL, DIL 
ADC RDX, -106 
JMP .bb_main.4 
.bb_main.4:
TEST DL, -64 
CMOVS EDX, EBX 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
STD  
AND RAX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
