.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EAX, 114588596 
INC EBX 
NEG DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -19 
CMOVB RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
CMP AX, 13281 
AND RCX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
NEG SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB ECX, dword ptr [R14 + RSI] 
ADD ESI, 0 
NEG AL 
CMOVB ECX, EDX 
LOOP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -57 
CLD  
MUL RAX 
ADC RBX, -109 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -115 # instrumentation
CMOVNBE SI, BX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
CMOVNS ECX, ESI 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
