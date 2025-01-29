.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], RDX 
XCHG BX, SI 
SUB AX, 31212 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 110 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
CMP SIL, 81 
SUB RAX, 382929301 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
CMOVZ RSI, RBX 
ADC RDI, 29 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
MOVSX RBX, SI 
CMOVO RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], 56 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
CMP EBX, EBX 
CDQ  
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
