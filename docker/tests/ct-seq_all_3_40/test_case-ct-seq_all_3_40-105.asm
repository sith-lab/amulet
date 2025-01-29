.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDI] 
XOR BX, -82 
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
OR DL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
NOT DL 
CMOVNZ RDI, RCX 
CMP RAX, 1384739602 
ADC DIL, DIL 
ADD AL, -108 
TEST EAX, -980087038 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -80 # instrumentation
CMOVS BX, BX 
SUB EAX, 550301601 
CMP RCX, 1 
SETBE AL 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
CMP AL, 86 
CMOVO BX, CX 
CMOVNP DI, SI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
CMP RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], ESI 
SETNO AL 
AND RAX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RAX], RAX 
JMP .bb_main.2 
.bb_main.2:
OR ECX, EAX 
SUB EDI, 95 
XCHG RDX, RDX 
LEA RCX, qword ptr [RAX + RAX] 
NOT BL 
MOV DL, AL 
TEST EDI, EDX 
TEST RSI, RAX 
AND AL, 7 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], 97 
XOR RAX, -1503164667 
XCHG CX, AX 
ADD RSI, 37 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND BX, -73 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
