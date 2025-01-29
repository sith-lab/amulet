.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, -2054993720 
IMUL ECX, EAX 
LEA ESI, qword ptr [RAX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -37 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], -65 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], -80 
MOVZX ECX, AL 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RAX] 
SBB BL, 109 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RDX 
CMOVNLE EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], 67 
MOV DL, -41 
CMOVBE RDX, RBX 
SBB AL, 49 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
CMOVNS DX, BX 
CBW  
SAHF  
NEG DL 
JMP .bb_main.4 
.bb_main.4:
CMP RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -68 
AND RCX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RCX] 
SBB RCX, RBX 
CMOVP ECX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
