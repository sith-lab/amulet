.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
ADC DL, AL 
CMOVS BX, DI 
CMOVNS SI, BX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
SBB AL, -61 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB RAX, -207406401 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 116 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
SUB SI, DX 
MUL DL 
CMP RDI, RSI 
JMP .bb_main.3 
.bb_main.3:
SUB BX, 17 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RDX 
IMUL RBX, RSI, -45 
MUL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -43 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
IMUL DI 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], ECX 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RDI] 
CMP CL, -23 
MOVSX RCX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
