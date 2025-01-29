.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -2 # instrumentation
CMOVS RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], AL 
SUB EAX, -1935144789 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -97 
AND RCX, -29 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -30 # instrumentation
CMOVNP RDX, RSI 
SBB EDX, EAX 
XCHG CL, DL 
IMUL AX, DI, 12 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
DEC BL 
CMPXCHG RSI, RBX 
SUB DL, CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 43 
ADC DL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDI] 
ADC DIL, 25 
INC CL 
JO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP EAX, ECX 
AND DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], BL 
IMUL AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 112 
CMOVO EAX, EBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, -27 # instrumentation
CMOVZ EDX, ECX 
TEST RAX, RCX 
SUB RAX, -1056040989 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -75 
ADC CL, DL 
CMOVNZ EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], 13 
SETNB BL 
ADC SIL, -46 
CMOVNL EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
MOVZX RAX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
