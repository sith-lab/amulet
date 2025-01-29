.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RDX] 
BSWAP RAX 
SBB AL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
ADC AX, -90 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RCX] 
CMOVLE EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], 88 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MUL SIL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
STC  
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
