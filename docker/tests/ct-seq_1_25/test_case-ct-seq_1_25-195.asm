.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 60 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RCX] 
CMOVS EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 93 
SUB DL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
ADD AX, -10107 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RBX] 
CMOVNBE DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
MOVSX DI, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], -73 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 71 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -83 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
