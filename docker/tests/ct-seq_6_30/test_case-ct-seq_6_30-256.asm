.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, -188704279 
CMOVNO RDI, RDX 
ADD DI, 106 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
CMOVNLE RSI, RDI 
JMP .bb_main.2 
.bb_main.2:
DEC CL 
CMP AL, -85 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 46 # instrumentation
LEA DX, qword ptr [RSI] 
CMOVP RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -734182095 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -10 
JB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
CLC  
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
MOVZX BX, DL 
ADC EBX, EBX 
CMOVNB CX, CX 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RCX] 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
