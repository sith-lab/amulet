.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDI] 
MOV AL, CL 
MOV CL, -2 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RBX] 
MOV EAX, EAX 
CMOVNL ESI, ECX 
CMOVO RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], ECX 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
ADC RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
NEG ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -29 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
