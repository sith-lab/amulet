.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RCX] 
CMP AX, -5620 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
ADD AX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 98 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
CMOVL SI, BX 
AND RSI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RSI] 
CMOVNBE ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
