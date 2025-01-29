.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DIL 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX], 58 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], BL 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MUL DL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RBX 
CMOVNB AX, BX 
OR DX, 0b1000000000000000 # instrumentation
BSR CX, DX 
ADD SIL, 66 # instrumentation
MOVSX ECX, CL 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], -85 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -98 # instrumentation
CWD  
CMOVNBE EDI, EBX 
NEG BL 
AND RBX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RBX] 
SBB DI, DI 
MOVSX RSI, DI 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RBX] 
MOVSX DX, CL 
JZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
LOOP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CLD  
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
IMUL ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 49 
LAHF  
MOVZX BX, DL 
ADC RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
