.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 5 # instrumentation
CMOVNS AX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
SBB AX, -22516 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], 87 
MOVSX EBX, DL 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], -62 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA AX, qword ptr [RBX] 
MOV BL, -27 
AND RBX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RBX] 
INC DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 4 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RCX] 
SAHF  
ADC RDI, -122 
CMOVO RCX, RAX 
CMOVLE RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 20 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
SBB CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
