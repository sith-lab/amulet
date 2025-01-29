.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 1 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], CL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -12 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX], 125 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
IMUL DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 124 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
