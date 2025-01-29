.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RDX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
ADD DL, -110 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], RBX 
CMOVS RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -846246146 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
MOVZX EAX, CL 
CMOVO RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RDX] 
IMUL SIL 
XCHG RDI, RAX 
CMP EAX, 1791397276 
SBB SIL, -23 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
STC  
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 58 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 88 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
