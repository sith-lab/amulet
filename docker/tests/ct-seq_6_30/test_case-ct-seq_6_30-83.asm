.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -51 # instrumentation
CMOVB RBX, RBX 
SBB EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], -46 
CMOVNZ ESI, EDI 
JMP .bb_main.1 
.bb_main.1:
XCHG ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 80 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RBX] 
XCHG SI, AX 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
MOVSX ECX, DX 
MOV AL, 121 
MOVZX DX, DL 
BSWAP EBX 
SUB EAX, -849125835 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], -115 
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
ADD AL, CL 
XCHG BL, BL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -76 # instrumentation
CMOVP AX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
