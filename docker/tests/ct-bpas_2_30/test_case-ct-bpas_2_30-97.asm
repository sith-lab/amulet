.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -22 # instrumentation
XCHG RCX, RDI 
ADC RSI, -120 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
LEA RCX, qword ptr [RDX + RDI + 47917] 
SUB EAX, 791984876 
CMOVNS RBX, RDI 
IMUL RDI, RDX, -96 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
MOV CX, DI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -66 
CMOVNZ ESI, EDI 
SUB EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
CMP EAX, 1941272396 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -119 
ADD RAX, RBX 
CMP RSI, 4 
AND RDX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RDX] 
LEA AX, qword ptr [RDX + RSI + 35938] 
CMP ESI, EBX 
LAHF  
MOV EDX, -2122221277 
CLC  
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
