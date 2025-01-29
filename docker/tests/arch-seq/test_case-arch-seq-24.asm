.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG DI, AX 
DEC BX 
ADD SIL, -96 
SETL AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
STD  
XOR DI, BX 
SBB AX, -11499 
SBB EDI, 9 
MOVSX SI, AL 
XOR EDX, 58 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
CMP BL, DL 
TEST RAX, -1427068364 
OR RBX, RBX 
OR RSI, -69 
ADC EAX, 444809091 
AND RBX, 0b1111111111111 # instrumentation
ADD DIL, -54 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RBX] 
LAHF  
NEG ESI 
CMOVL EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 106 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
XADD RDI, RDX 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], AL 
CMOVNZ EBX, EDX 
CMOVO RBX, RDX 
MOV AX, 9149 
CMPXCHG ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RBX] 
OR EBX, -1 
CMOVNBE AX, BX 
SUB ESI, ESI 
MUL SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], BL 
ADD RDX, -30 
SBB RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
