.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD ECX, 85 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
CMOVNLE ECX, EBX 
CMOVNP CX, SI 
MOV BL, -18 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -56 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], -54 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
MOVSX RSI, BX 
MOVSX ESI, DL 
CMOVNLE RCX, RSI 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB AX, -10834 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
ADD DIL, 60 # instrumentation
CMOVP EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RDX] 
INC RDI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], CX 
ADC DIL, -14 
ADC AL, BL 
ADC AX, -78 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], 107 
MUL DL 
CMOVB DX, AX 
ADC AX, 16370 
MOV SIL, -107 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
