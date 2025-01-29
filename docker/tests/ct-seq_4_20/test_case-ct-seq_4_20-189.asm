.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RBX 
ADD AL, 30 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
ADC BL, DL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV SIL, DL 
IMUL BL 
CMP DL, DIL 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], SIL 
MOV DX, -2095 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -51 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
