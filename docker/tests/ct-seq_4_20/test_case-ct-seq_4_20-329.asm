.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -19 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], SIL 
MOVZX EAX, BL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RAX] 
SBB CX, CX 
CMOVNL EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 79 
MOV ESI, 1807523663 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 107 
CMP SIL, 82 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
