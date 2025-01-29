.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 125 # instrumentation
SBB RAX, -418280590 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
MOVZX EBX, AX 
INC BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -43 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -106 # instrumentation
SBB SI, 51 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
ADC DI, 126 
SUB RDI, -104 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EAX 
SUB DI, 126 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -95 # instrumentation
ADC DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RBX] 
CMOVNZ DX, AX 
XCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], -51 
JBE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
ADC SI, 24 
CMOVL BX, DX 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], SI 
INC CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 90 
AND RCX, 0b1111111111111 # instrumentation
MUL RBX 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
IMUL CX 
SUB EAX, 1302569314 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 19 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
