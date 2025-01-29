.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RSI 
AND RDI, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RDI] 
MOVSX ECX, BL 
XCHG ECX, ECX 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], BL 
CMOVNP ECX, EAX 
ADC AX, 10999 
SUB RAX, -611517794 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
IMUL RCX, RCX, -66 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
CMP RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], -72 
MOV RSI, RSI 
NEG DI 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 14 
IMUL EDX 
CMP RDI, RDI 
MOV RBX, -492774205097415957 
MOVZX RCX, BX 
CBW  
CMOVP AX, CX 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], EBX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DL 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
SBB DIL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
MUL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
