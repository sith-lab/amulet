.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP BL, -5 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 109 
CMOVB EDX, EBX 
ADD ESI, 89 
CMP RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RAX] 
CMP CX, -70 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
IMUL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RSI] 
CMOVNO EDX, EBX 
CMOVS BX, CX 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RDI 
CMP CL, -62 
SUB DIL, AL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RSI] 
CMOVO DI, AX 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
CMOVLE BX, BX 
CMC  
MOV RSI, RCX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RBX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD AL, -88 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
