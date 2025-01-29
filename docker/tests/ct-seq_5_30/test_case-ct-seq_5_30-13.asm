.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
SBB AL, CL 
CMOVNBE BX, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RBX] 
MOV EDX, -1781706132 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
CBW  
SUB DIL, 120 
CMOVNZ EBX, EDX 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
CMP ECX, EBX 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, 0 # instrumentation
SBB AL, -65 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 94 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 63 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 20 
JMP .bb_main.3 
.bb_main.3:
LEA BX, qword ptr [RBX + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], CX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -113 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
LEA RCX, qword ptr [RCX] 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
