.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EBX 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
CLC  
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
CMOVB AX, SI 
MUL ESI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
SBB RSI, RCX 
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -15 
ADD RDX, RDX 
IMUL EDI 
ADD SIL, 84 # instrumentation
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
SUB EAX, -868267292 
CMP DL, -100 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], -59 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -954158983 
CMP EAX, -24 
SUB RAX, -20 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDX 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -101 
ADC RAX, 1077956601 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
