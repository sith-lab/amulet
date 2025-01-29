.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDI, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 5 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 52 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -66 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -3 
AND RSI, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -99 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP CL, DL 
CMP CX, -90 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -127 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], 126 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
