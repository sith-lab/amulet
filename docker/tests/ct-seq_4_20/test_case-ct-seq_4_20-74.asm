.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDX] 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RAX] 
OR CX, 0b1000000000000000 # instrumentation
BSR CX, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], EAX 
INC DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD DIL, 92 # instrumentation
CMOVNL RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -30704328 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MUL BL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
MOVSX RBX, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
SUB CL, 119 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
