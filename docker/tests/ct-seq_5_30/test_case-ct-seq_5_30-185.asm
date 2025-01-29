.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -119 
AND RSI, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RSI], 60 
ADD DIL, -50 # instrumentation
CMOVBE DX, SI 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RSI] 
CMOVNL RAX, RDI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 118 
LEA ESI, qword ptr [RDI + RAX] 
JL .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD SIL, -61 # instrumentation
SBB DX, -6 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], AL 
IMUL BX 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, 91 # instrumentation
MOV CX, AX 
CMOVP RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RBX 
CMP DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RBX] 
MOV DI, 26171 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 77 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMP RDX, qword ptr [R14 + RCX] 
DEC CL 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
CMP RSI, 118 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], EDI 
SBB BX, CX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
