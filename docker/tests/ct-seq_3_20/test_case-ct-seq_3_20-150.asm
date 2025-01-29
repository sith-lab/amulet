.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
IMUL CL 
ADD DIL, -127 # instrumentation
CMOVNL CX, DX 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -30 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
CMOVNBE EDI, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RDI] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], SI 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], -5 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
MUL AL 
ADC BX, -47 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 78 # instrumentation
CMOVNS DX, CX 
MUL BL 
ADD AL, AL 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
