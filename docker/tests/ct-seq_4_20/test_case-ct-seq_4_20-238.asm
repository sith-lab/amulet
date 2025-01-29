.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -104 # instrumentation
ADC DI, 99 
MOV BL, DL 
SUB EDI, EBX 
DEC CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -81 
CMOVNB RDI, RSI 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RBX] 
SAHF  
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
ADD DIL, 91 # instrumentation
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -25 # instrumentation
SBB SI, 45 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -75 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RBX] 
NEG RDX 
ADC DX, DX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
