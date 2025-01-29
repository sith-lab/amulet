.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMP SI, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVS EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], BX 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 2 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 23 
DEC AX 
SBB AL, 119 
ADD CL, -33 
CMP AX, 31360 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD SIL, 26 # instrumentation
CMOVBE BX, DI 
CMOVB EDX, EBX 
INC SIL 
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RAX] 
XCHG AL, CL 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
ADC ECX, EAX 
CMP RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RBX] 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
SUB RDX, RDX 
CMOVL RAX, RDI 
CMP DI, AX 
MOV ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
