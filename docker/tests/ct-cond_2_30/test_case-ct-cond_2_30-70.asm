.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
IMUL EDX, EDI, 113 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
SBB BL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -127 
CMOVLE CX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 37 
IMUL CX 
SUB EAX, -1520775793 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -60 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
CMP SIL, 71 
NEG BX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDX], 73 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
ADD SIL, 64 # instrumentation
CMOVZ DX, CX 
CMOVBE CX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], -79 
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDX] 
DEC DIL 
CBW  
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RSI 
OR SI, 0b1000000000000000 # instrumentation
BSR BX, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
SBB DL, 79 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
ADD AL, -117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
