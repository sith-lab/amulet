.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], 3 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RAX] 
SUB RCX, RBX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 14 # instrumentation
SBB CX, -125 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOV EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 124 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 14 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], -6 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 16 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
