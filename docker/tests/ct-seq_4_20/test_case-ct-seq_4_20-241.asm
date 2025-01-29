.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC SIL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EDX 
CMOVO EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
DEC DL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
CMOVS EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], -9 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
