.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], 19 
CMOVNO ECX, ECX 
SUB AL, BL 
MOV ESI, EDX 
TEST AX, -7345 
CLD  
CMP DX, DX 
IMUL DI, SI 
ADD SIL, -121 # instrumentation
MOVZX DI, DIL 
CMOVNS DI, DX 
ADC DIL, -115 
AND RDX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 126 # instrumentation
SBB RAX, 325240270 
SETBE CL 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
XOR AL, DL 
ADC SI, 32 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], CX 
AND RAX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RAX] 
XADD ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 83 
DEC DIL 
ADC RAX, -1862451098 
SBB CL, 87 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RBX] 
AND RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
ADC DIL, -61 
LEA RBX, qword ptr [RDX] 
ADD AX, 13888 
IMUL EDX 
AND RAX, RBX 
MOV RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
XCHG SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RAX 
STD  
OR BL, 57 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 6 
XCHG EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
