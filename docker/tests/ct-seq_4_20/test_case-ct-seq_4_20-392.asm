.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, AL 
MOVSX EBX, BL 
DEC EBX 
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], 13 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
ADC RAX, 124031969 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], RDX 
MOVSX AX, DL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
SUB RAX, 1043398175 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -37 
AND RDI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDI] 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RSI 
MOVZX EAX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
