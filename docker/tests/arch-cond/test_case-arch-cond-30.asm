.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 2082094650 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EDX 
JMP .bb_main.1 
.bb_main.1:
TEST EAX, -474585669 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
SETZ DL 
ADC DX, BX 
CMOVNL RDX, RCX 
OR DI, 11 
CMOVNS SI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -51 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
ADD DIL, 120 # instrumentation
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EAX 
SUB ECX, -90 
ADC AX, 24733 
INC AL 
XOR AX, -8803 
CMOVNB ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RSI] 
SETB AL 
SBB CL, DL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], BX 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 97 # instrumentation
CMOVNS DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX] 
IMUL RAX, RSI 
ADD SIL, -68 # instrumentation
CMOVLE RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ECX 
OR DL, 1 # instrumentation
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
OR EDI, dword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, 8 # instrumentation
SETL CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
JLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MOVZX EAX, DIL 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
MOVZX DI, CL 
TEST BL, -33 
TEST ESI, -444367187 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
