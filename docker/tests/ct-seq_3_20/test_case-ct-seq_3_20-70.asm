.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 96 # instrumentation
CMOVLE RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
LEA EBX, qword ptr [RDX + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], 92 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 37 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
CMP AL, DL 
IMUL RAX, RSI, 81 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -112 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], -81 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 115 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
IMUL RBX, RCX, -120 
SBB BX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
