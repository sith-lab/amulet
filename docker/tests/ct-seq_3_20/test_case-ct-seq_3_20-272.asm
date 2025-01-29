.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 89 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
ADC ESI, -48 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
SBB DIL, 113 
ADC EBX, EDI 
IMUL BL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], EDI 
SUB EAX, 94 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RCX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RAX] 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RBX] 
IMUL RBX 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
