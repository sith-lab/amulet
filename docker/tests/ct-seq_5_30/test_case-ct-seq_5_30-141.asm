.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DL, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1775599855 
AND RBX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 18 # instrumentation
SBB DI, DI 
CDQ  
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
ADC AL, 116 
MUL EDI 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], CX 
CMOVNO RDX, RBX 
ADC CX, BX 
SUB EDX, 105 
CMOVNLE RSI, RDI 
IMUL SIL 
AND RCX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RBX] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 60 # instrumentation
CMOVB ECX, EDI 
CMOVZ DI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
MUL DX 
JMP .bb_main.4 
.bb_main.4:
ADD DX, 123 
CMOVP RBX, RBX 
INC CX 
CWD  
CMOVNLE RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 107 
SUB AL, -127 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
