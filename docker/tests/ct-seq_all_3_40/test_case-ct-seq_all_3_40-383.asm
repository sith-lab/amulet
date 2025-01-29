.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RSI 
OR AL, 94 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -652859464 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], -63 
IMUL SI, DX, 110 
TEST SIL, 42 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], DL 
TEST DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -118 
OR RAX, 2050176014 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
SETP DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
MOVSX RAX, BL 
CMOVNS EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 58 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDX 
MOVZX BX, DL 
CMOVZ RAX, RDX 
CMP AL, -126 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], ESI 
XOR AL, 67 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RBX] 
SETZ BL 
DEC CL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RDX] 
ADD DIL, -60 # instrumentation
SBB SIL, -54 
SBB CX, 62 
IMUL RDI, RCX 
MOVSX RDI, AX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
