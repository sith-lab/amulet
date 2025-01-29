.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RSI] 
IMUL RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
CMOVNP EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RCX] 
ADD RAX, 1970994419 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDI] 
MOVSX CX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDX] 
CMOVNZ RBX, RSI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EDX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
CMOVNZ CX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
CMP SIL, 44 
CBW  
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 59 # instrumentation
SBB EAX, 71 
MOV EDX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
CMP DIL, -32 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
CMP BL, DL 
AND RCX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RCX], -37 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
