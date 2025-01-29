.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
CMOVNO RDI, RDX 
CMOVNZ SI, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -4033 
CMOVS CX, DX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], SIL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 96 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RBX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 1538524048 
MOVSX DI, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], 57 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
MOV AX, -30115 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -79 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
