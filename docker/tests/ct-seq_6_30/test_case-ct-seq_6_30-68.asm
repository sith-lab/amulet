.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
CMOVNL EDI, EAX 
CMOVS DI, SI 
CMOVO RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -28 # instrumentation
CMOVNZ ECX, EAX 
SBB AX, 29174 
AND RSI, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
JNP .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MOV RDI, -3979124409044576908 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -98 
INC CL 
CMOVLE RAX, RDI 
DEC SIL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RBX 
ADD EBX, -61 
XCHG RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 10 
BSWAP EBX 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
STC  
SBB EDX, -2 
ADC SI, SI 
DEC BL 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVZX RAX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
