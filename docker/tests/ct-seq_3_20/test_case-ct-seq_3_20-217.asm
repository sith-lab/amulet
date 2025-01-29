.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], BX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], -91 
AND RBX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], 116 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
MOVZX RBX, DX 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 59 
ADD RAX, -567219650 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 21 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], -101792622 
NEG BL 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], 92 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], -109 
MUL DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
