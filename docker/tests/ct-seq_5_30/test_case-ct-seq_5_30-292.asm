.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 123 # instrumentation
MOV AL, -107 
MOVZX EDI, BX 
CMOVO EDI, EDI 
ADC RAX, 1704628421 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -35 # instrumentation
MOV RSI, RDX 
SBB CL, CL 
SUB RDI, RBX 
CMOVO RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 112 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], ESI 
ADD EAX, -930895662 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], RAX 
NEG RAX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMP RDI, qword ptr [R14 + RBX] 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOV SIL, -80 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
MUL ESI 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], -73 
ADC BX, AX 
SUB BL, BL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 14527 
AND RDI, 0b1111111111111 # instrumentation
SBB EBX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RBX 
ADD EAX, -36 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
