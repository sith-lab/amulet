.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -74 # instrumentation
ADC CX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -95 
MOVZX CX, AL 
CMOVL CX, DI 
CMP DL, CL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], ECX 
SUB AX, DI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
CMP AL, 90 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 1 # instrumentation
AND EDX, dword ptr [R14 + RCX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RCX] 
ADD SIL, -90 # instrumentation
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
INC AL 
CMOVBE RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
SUB DL, CL 
CMOVNP AX, DI 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], CL 
SBB EBX, 96 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 69 
CMP CL, -19 
CMOVNP RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], 33 
INC BL 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
