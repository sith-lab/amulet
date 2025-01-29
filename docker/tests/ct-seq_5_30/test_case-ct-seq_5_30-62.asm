.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], -48 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
MOVSX RDI, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
JRCXZ .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
SUB RSI, RSI 
CMOVNBE RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
LOOPE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MUL AX 
ADC RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], 91 
CMP DL, -33 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RSI 
ADD DIL, 93 # instrumentation
ADC AL, -93 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -89 
DEC DL 
CMOVNS ECX, ECX 
SBB CX, CX 
MOVSX RCX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], SIL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], 69 
CMOVO DX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RAX] 
CMOVNS EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
