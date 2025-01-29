.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
CMP RAX, -24 
SBB AL, -110 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDX] 
LOOP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
MOVZX CX, BL 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], CX 
CMOVS EBX, EAX 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDI] 
STC  
INC DL 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
NEG DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], -122 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 83 
INC RCX 
SUB DL, 127 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RDX 
ADD DIL, -21 # instrumentation
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RAX] 
MUL SIL 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
DEC DL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DX 
INC CL 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
