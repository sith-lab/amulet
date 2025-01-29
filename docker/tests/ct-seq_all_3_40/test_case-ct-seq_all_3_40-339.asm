.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG ECX 
SBB EAX, -1113563526 
SETO DIL 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
NOT RCX 
MOVZX RDX, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, qword ptr [R14 + RSI] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -20 # instrumentation
ADC RSI, RDX 
XCHG RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
SUB EAX, -1897067842 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -76 
OR AL, CL 
MOVZX BX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], BX 
CMP RAX, -1426532150 
NOP  
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RDX] 
CMP AX, -21225 
ADD AL, 121 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
NEG DL 
SETB SIL 
SUB AX, -16 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RAX] 
CMP AX, 18237 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], -126 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RSI] 
SBB EAX, 322145334 
SUB AL, 53 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -102 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], AX 
MOVSX RBX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDI] 
XOR AL, AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], -92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
