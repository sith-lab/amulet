.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWDE  
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], 72 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMP EDX, -111 
ADD AL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], BL 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -54 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
CMOVZ RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RDI] 
CMOVNLE EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
