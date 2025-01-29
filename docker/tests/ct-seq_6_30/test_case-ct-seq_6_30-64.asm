.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RAX] 
CMOVB RDX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RSI] 
CMOVB DI, CX 
CMOVP BX, AX 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -103 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 118 # instrumentation
CMOVO AX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
ADC AL, -91 
JNB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
NEG RDI 
SBB DX, 108 
INC CL 
AND RCX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RCX] 
INC BL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EDI 
MUL RSI 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
IMUL RDX, RBX, -65 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -76 # instrumentation
CMOVNO DI, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 97 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDI] 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL AX 
SBB RBX, -57 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], -1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
