.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RAX 
CMOVL EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], DL 
DEC DI 
LEA DX, qword ptr [RCX + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDI] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
ADD ECX, 30 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], BX 
CMOVL EDX, EBX 
ADC EDX, -3 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RSI 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], -71 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], EDX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 32 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -94 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
SUB EAX, 1159986393 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
