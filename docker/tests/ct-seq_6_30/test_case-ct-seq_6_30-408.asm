.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 19 # instrumentation
CMOVL ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RSI] 
NEG RCX 
CMOVNZ DX, DX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
DEC DL 
NEG DI 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 47 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -741614823 
CMOVNLE RBX, RBX 
MOVSX DX, AL 
CMOVNLE ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RSI] 
JNB .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RSI] 
XCHG ECX, EBX 
INC ECX 
LEA SI, qword ptr [RAX] 
ADC CL, -57 
ADC DI, -9 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
ADD DIL, 55 # instrumentation
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RDX 
MUL EDX 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], 74 
AND RSI, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RSI] 
CMOVS BX, AX 
SBB CL, -16 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
