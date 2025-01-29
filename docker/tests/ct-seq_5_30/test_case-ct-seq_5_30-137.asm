.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL RBX 
ADD AL, 32 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
ADD DIL, 70 # instrumentation
ADC SI, 68 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], SI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
SUB CL, SIL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 39 # instrumentation
CMC  
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], -40 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
ADD SIL, -56 # instrumentation
MOV EDX, EDI 
CMOVO DI, CX 
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
MOV SIL, CL 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
MOVZX DI, CL 
CMOVS RAX, RSI 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -115 # instrumentation
CMOVNL DX, CX 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], -125 
MOV RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
ADD DIL, 62 # instrumentation
CMOVLE RCX, qword ptr [R14 + RDI] 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
