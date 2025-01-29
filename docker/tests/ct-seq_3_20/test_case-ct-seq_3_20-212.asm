.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB DIL, -106 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], -76 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SUB RAX, RAX 
MOV DX, -875 
MOVZX BX, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
LEA RDI, qword ptr [RDX] 
SUB DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -75 
AND RAX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 82 
SUB RAX, -95060971 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
ADC EAX, -110 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RCX] 
CMP EAX, 87 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
