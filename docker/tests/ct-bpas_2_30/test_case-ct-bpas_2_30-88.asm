.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
MOV EAX, 1841875497 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
SUB CL, BL 
MOVSX RSI, DI 
ADC DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RAX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], 70 
AND RAX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RAX] 
STC  
CMOVNS SI, CX 
CMP RAX, 37 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RSI 
ADD CL, -32 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RDI] 
SUB BL, -82 
ADD EAX, -16 
AND RCX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -102 
CMOVNLE BX, SI 
CMOVS RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], -107 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
