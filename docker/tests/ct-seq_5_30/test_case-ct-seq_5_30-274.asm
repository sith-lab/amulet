.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD EAX, -93 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX] 
ADC SI, -14 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
IMUL ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
CMP BX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], ESI 
ADC EAX, -1341266709 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RSI 
ADD EAX, 1549298126 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 25 # instrumentation
CMOVNB SI, CX 
SUB DL, BL 
MUL SI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -3 
XCHG CX, SI 
SUB BX, -25 
MOV BX, -32560 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], 17 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
ADD RSI, RDX 
CMOVB EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
