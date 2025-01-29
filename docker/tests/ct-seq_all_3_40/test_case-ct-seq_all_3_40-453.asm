.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND ESI, 97 
SUB AL, 36 
TEST DL, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 21 
AND RDX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RDX] 
NEG RDX 
LAHF  
XOR AL, 43 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], 23 
AND RBX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RBX] 
SETO BL 
INC DI 
AND RCX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RCX] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR SIL, BL 
SUB RAX, 1004825358 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 8 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], EDI 
ADD SI, CX 
CMOVNB DI, BX 
AND RCX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RCX] 
DEC EDI 
AND RCX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RCX] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], AL 
AND DIL, 12 
XOR RAX, -1798348953 
CMOVBE CX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDX] 
CMC  
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
CMOVNB ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
SUB RSI, -112 
IMUL SI 
XCHG EBX, EAX 
ADC AL, 40 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
