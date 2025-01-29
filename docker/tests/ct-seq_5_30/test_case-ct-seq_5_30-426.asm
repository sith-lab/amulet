.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RAX] 
CMOVBE RSI, RDX 
STD  
AND RSI, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVBE RDX, RSI 
SUB EAX, -1482155262 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -124 # instrumentation
CMOVS SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RCX] 
MUL DI 
IMUL RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
ADC RSI, RDI 
SBB RBX, -21 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, -101 # instrumentation
CMOVB EDX, EBX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -81 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], 119 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 24019 
IMUL SI, DI 
SUB BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 51 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -5 
BSWAP RBX 
MOV EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
