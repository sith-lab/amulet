.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
OR DL, -71 
ADD DIL, 6 
XADD SI, DX 
OR EDX, ECX 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], AL 
CMOVNP DI, SI 
MOVSX DX, DL 
XOR BX, -71 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], -4 
CMOVBE CX, BX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 77 # instrumentation
SBB EAX, -195978810 
CMOVZ RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -115 
MOV DL, 92 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], 126 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
SBB RAX, 102513423 
MUL DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 119 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
IMUL EDI 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], -123 
ADD DIL, -95 # instrumentation
CMOVB EDI, ECX 
SETNL BL 
XOR BX, -108 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -85065981 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
XOR SIL, -82 
MOV EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
CMOVNB EBX, EDX 
SBB RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVLE BX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RAX] 
XOR ECX, 83 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
