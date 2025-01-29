.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RBX] 
MOVZX RDX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -101 
CMOVNLE EDX, ECX 
SBB EAX, 6611645 
DEC ECX 
JMP .bb_main.1 
.bb_main.1:
IMUL EBX 
AND RDI, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
CMOVO RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -8 
MOV AL, BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
SUB AX, -12812 
CMOVNL ECX, EDI 
ADC AL, 61 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], -116 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], -663518013 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
CLC  
CMP AL, 28 
CBW  
MUL RAX 
JMP .bb_main.3 
.bb_main.3:
CMP RAX, 1170852210 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], -88 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], CL 
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], -12 
SUB AL, 33 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
