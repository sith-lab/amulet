.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -29 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
NEG CL 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], BL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RSI] 
INC RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 2068203751 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RSI 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, 117 # instrumentation
CMOVNL CX, BX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 20 # instrumentation
ADC EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -63 
AND RCX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
