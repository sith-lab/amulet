.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 91 # instrumentation
SBB AX, -20541 
CMOVNLE RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 1 # instrumentation
MUL DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
STC  
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
CMOVLE RBX, RDI 
MOVZX DI, DL 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 64 # instrumentation
CMOVLE CX, SI 
MOV BX, CX 
CMP DX, 117 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 111 
AND RAX, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RAX], -41 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], SI 
ADD SI, CX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 83 # instrumentation
CMOVNB EAX, EDI 
MOVSX EDX, CL 
MOVSX RAX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -51 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 16 
MOVZX EBX, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -123 
MOV EDI, ECX 
ADC DI, 44 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
SBB BL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
