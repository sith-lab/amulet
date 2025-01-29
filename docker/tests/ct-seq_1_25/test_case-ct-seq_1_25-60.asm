.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -45 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 78 
ADC RBX, 35 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 84 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -81 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RBX] 
ADD DIL, -75 # instrumentation
MOV EDI, ESI 
CMOVLE RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -33 
CMOVNL RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -82 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], -15 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], -60 
IMUL EDI, ECX, 15 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
ADD AX, 29310 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
