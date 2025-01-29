.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
MOVSX SI, DIL 
DEC RBX 
INC BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
INC EDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -109 
ADD DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], 5 
ADD AX, 6000 
JMP .bb_main.1 
.bb_main.1:
MUL BX 
ADD SIL, -28 # instrumentation
CMOVNLE CX, DI 
DEC EAX 
CMOVNBE RDX, RBX 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, 1 # instrumentation
CMOVNLE RSI, RDI 
CMOVLE EDX, ESI 
SBB DL, CL 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -21 # instrumentation
CMOVNS RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -118 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], -37 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -8 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -96 # instrumentation
SBB BL, 105 
ADD SI, 80 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], DL 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
SBB AL, -52 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], DI 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
