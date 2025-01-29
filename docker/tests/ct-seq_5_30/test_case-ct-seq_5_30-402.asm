.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP EDI 
INC BL 
DEC BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
CMC  
SUB AX, 29970 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], -124 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], BX 
SBB EBX, -22 
SUB AL, -99 
CMOVNLE EDX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
INC RSI 
NEG RAX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, DIL 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1055781042 
DEC RBX 
AND RSI, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
CMOVNS EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], -15 
CMOVNB EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDI 
XCHG EAX, EDI 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
INC EDI 
IMUL SIL 
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
