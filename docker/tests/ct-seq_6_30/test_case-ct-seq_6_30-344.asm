.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -13 
INC DIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RAX] 
ADD SIL, 39 # instrumentation
CMOVZ RDX, RSI 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
MOVSX CX, CL 
SBB ECX, 25 
AND RDX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RDX] 
JB .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
MOVSX CX, SIL 
SUB EAX, -172432353 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
XCHG RDX, RAX 
MUL RAX 
ADD DIL, 85 # instrumentation
CMOVNS EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RBX] 
INC RBX 
SUB RBX, RCX 
JMP .bb_main.4 
.bb_main.4:
OR DL, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
CMP DX, -64 
SUB AL, 84 
CMP EAX, -733600098 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 26 # instrumentation
ADC RAX, 102366719 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 37 
CMOVNL EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
ADC AL, -40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
