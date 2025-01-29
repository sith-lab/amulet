.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 5984 
MUL BX 
NEG RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
NEG BL 
CMOVNB CX, CX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
ADC CX, CX 
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
LEA RCX, qword ptr [RCX + RBX + 37767] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 124 
IMUL RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
SUB AL, CL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], ESI 
CMOVNL RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
