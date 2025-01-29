.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -58 # instrumentation
CMOVNS RSI, RBX 
CMP AX, 681 
CMP EDX, 96 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
IMUL CL 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], 87 
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
CMP CX, DI 
IMUL AX, DX 
NEG EBX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, -44 # instrumentation
SBB SI, 113 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
CMOVNO EBX, EDI 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RDX] 
CMOVNP RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
CMP SIL, -66 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
IMUL RCX, RBX, -24 
SUB EAX, -32 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RSI 
IMUL BX, CX, 89 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -58 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
LEA RAX, qword ptr [RAX + RDX + 1889] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ECX 
CMOVBE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RAX 
CMOVP SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
