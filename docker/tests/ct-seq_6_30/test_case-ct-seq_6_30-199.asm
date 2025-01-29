.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
XCHG RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
ADD DIL, -106 # instrumentation
CMOVNP RSI, RDX 
ADD EAX, -2106687535 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
SUB AX, -32191 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD DIL, -128 # instrumentation
INC RSI 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DL 
CMOVNZ EBX, ECX 
CMOVNS RDX, RAX 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -82 # instrumentation
MOVZX CX, BL 
CMOVS RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
ADC SI, -52 
CMP SI, CX 
IMUL RAX, RSI, -32 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], 85 
IMUL SI 
CWDE  
MOVZX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD BX, 107 
BSWAP RAX 
JMP .bb_main.5 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
