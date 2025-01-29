.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
CMOVB DX, AX 
CMP RAX, 243559585 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -34 
CMP DL, CL 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], -30 
ADC RSI, 25 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 68 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -52 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 115 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -77 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
