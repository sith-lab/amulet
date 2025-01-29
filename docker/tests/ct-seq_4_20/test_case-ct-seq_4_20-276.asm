.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RBX], -10 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
CMP EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RSI 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
IMUL DX, BX, 68 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], 77 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 11 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 35 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
SBB AL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
