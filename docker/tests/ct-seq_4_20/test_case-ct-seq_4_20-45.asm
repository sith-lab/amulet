.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 86 
AND RAX, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RAX] 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, 116 # instrumentation
SBB AL, 109 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -127 
ADC AX, -65 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], BL 
ADC AL, BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 56 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 79 
SBB AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
