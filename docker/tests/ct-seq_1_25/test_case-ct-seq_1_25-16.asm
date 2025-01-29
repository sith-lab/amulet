.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -23 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 516781367 
MOVSX ESI, AL 
INC EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], BX 
MOV DX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
CMOVNZ DX, CX 
CMP RCX, -94 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -68 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -37 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
