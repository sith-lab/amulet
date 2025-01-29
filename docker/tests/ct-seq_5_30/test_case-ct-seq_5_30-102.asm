.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
INC RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
CMOVNBE RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
SUB RDX, -98 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -29 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 30 # instrumentation
ADC RAX, 1887536566 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], -69 
CMP BX, -14 
AND RCX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -22 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
MOVZX RCX, CL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 38 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -49 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDI] 
SBB RCX, -6 
IMUL EDI, EAX 
JMP .bb_main.4 
.bb_main.4:
MOVZX EAX, BL 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ECX 
CMOVNZ DX, DX 
AND RSI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 56 
SBB AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
