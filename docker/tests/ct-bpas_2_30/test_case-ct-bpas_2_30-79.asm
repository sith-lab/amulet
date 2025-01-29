.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
DEC DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RAX] 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
SBB CL, 30 
CMOVBE EBX, EBX 
LEA RDX, qword ptr [RDI] 
ADD EAX, 1008224822 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], RDI 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -103 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
IMUL ESI 
INC ESI 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -6 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
MUL CL 
SUB SIL, SIL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], EBX 
DEC RDX 
MOVZX EDX, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
IMUL ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
