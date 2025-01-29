.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
ADC BL, DL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
ADC CX, -32 
ADD DIL, 97 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RBX] 
SBB BL, BL 
CMP ESI, 55 
INC AL 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
CMOVNL DX, AX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 105 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
ADD BL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 14316 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -61 
JMP .bb_main.4 
.bb_main.4:
ADD AX, -87 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
SUB BL, 3 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 88 
IMUL SIL 
ADD DIL, 5 # instrumentation
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
