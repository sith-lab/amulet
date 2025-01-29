.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -74 
CMOVNL RAX, RDI 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -63 
MOVSX EDX, DIL 
AND RDI, 0b1111111111111 # instrumentation
SBB EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RDI] 
ADD DIL, 6 # instrumentation
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], 41 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 802284296 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], CX 
ADD EBX, -38 
CMP BL, CL 
CMOVB DI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
XCHG AX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 77 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
