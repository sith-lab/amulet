.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -90 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDI] 
CMP AL, -100 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RCX] 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 102 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD AL, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], -26 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], -43 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -102 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 108 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 58 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 21261 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
