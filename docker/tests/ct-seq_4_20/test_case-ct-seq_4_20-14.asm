.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], 86 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
MUL DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RAX] 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 113 # instrumentation
CMOVNS DX, AX 
AND RDX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], 12 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DL 
CMOVNBE RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], DIL 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
