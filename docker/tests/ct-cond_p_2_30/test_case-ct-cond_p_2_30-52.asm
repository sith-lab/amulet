.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDX 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], DL 
CMOVNLE RAX, RAX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 64 
AND RDX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDX] 
CMOVB RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDI], -74 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
ADC AX, 26121 
SBB RCX, -41 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 102 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RDX] 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
CMOVB ESI, EDX 
INC SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RSI] 
DEC EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -61 
CMOVNB EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
CMOVLE BX, CX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
CMOVNO CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
