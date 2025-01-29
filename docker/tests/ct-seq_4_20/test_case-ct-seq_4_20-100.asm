.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 114 
CMOVNO EAX, EAX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -10 
AND RBX, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], -43 
AND RSI, 0b1111111111111 # instrumentation
ADD RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ESI 
ADD EAX, 1737867637 
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX], 80 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], -7 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
