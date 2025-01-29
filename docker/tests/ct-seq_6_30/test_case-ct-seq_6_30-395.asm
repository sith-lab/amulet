.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
DEC DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -47 
CMOVNO CX, DX 
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
LOOPNE .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
MOV RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RBX] 
DEC DL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
DEC SI 
NEG AL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
SBB RDI, -122 
JMP .bb_main.3 
.bb_main.3:
NEG RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 20 
AND RSI, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RSI] 
CMP SIL, 84 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
JMP .bb_main.5 
.bb_main.5:
ADD SIL, 13 # instrumentation
CMOVLE BX, BX 
CLD  
SUB BL, 38 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
