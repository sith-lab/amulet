.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], SIL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
SUB RAX, -1288265196 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], 27746 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RBX 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], -20 
AND RDI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], 6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
