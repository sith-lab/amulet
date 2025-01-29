.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
CMP RBX, -121 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -18 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 62 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 16 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RAX 
CMOVNLE DX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
CMOVNB RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
