.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], 45 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], DX 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 7 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
INC BL 
CMOVL RSI, RSI 
JB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -46 # instrumentation
CMOVNZ EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EAX 
NEG BL 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
IMUL ESI, EBX, -81 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -5 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
