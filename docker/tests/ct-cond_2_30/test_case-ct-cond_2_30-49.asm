.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDI, DL 
SUB DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -16 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDX] 
CMOVNLE SI, BX 
ADD RAX, -1553629974 
CMOVBE CX, DX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
ADD SIL, -48 # instrumentation
MOV word ptr [R14 + RBX], AX 
MOVZX RDX, CL 
CMOVLE BX, AX 
LAHF  
CWD  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC DIL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RCX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RCX], -102 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -35 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
IMUL DI 
ADC AX, -15 
CMOVNB EDX, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
CMOVNZ EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
