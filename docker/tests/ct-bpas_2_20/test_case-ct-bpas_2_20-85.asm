.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ESI, BL 
AND RSI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], -100 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], 78 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 16 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 18 
AND RCX, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RCX] 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -17 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -122 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], 112 
MOV RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RAX] 
SBB DIL, -76 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
