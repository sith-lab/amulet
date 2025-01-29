.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, AL 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -92 
ADC EDI, ECX 
SBB DL, 94 
ADD RCX, -4 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -47 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
ADD AX, -2356 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
CMOVNZ RDX, RCX 
CMC  
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], 43 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RDI] 
ADC AL, 47 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -1377722189 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -13 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -41 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], 62 
SBB CL, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RDX] 
CMOVNL EDI, EBX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD DIL, 52 # instrumentation
CMOVBE DX, SI 
MOV DL, 50 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], 120 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
