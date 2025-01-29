.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
LEA ECX, qword ptr [RDI + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
CMOVNLE AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], 2 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], BL 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RAX] 
ADC DX, -79 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -44 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
SBB EAX, 1243036278 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 4 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
CMOVNB RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
