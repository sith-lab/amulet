.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], ESI 
OR DIL, 82 
MOV BX, DI 
AND RDX, 0b1111111111111 # instrumentation
ADC RCX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], -115 
IMUL AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], DL 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], -20 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVZX EBX, BL 
SUB EAX, 1253979174 
SETNLE DL 
SUB AL, -49 
XOR RDX, -65 
CMOVNL EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RAX] 
XOR BL, -61 
ADD SIL, 96 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
SUB CX, -47 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RCX] 
SETP CL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], SIL 
ADC EDI, ESI 
SETNBE DL 
XOR EAX, 761672249 
ADD DX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], -92 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], RBX 
SUB CL, 110 
AND RDX, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RDX] 
ADD AX, -127 
TEST AX, -28606 
TEST EAX, -221527586 
ADC SI, DX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 41 # instrumentation
SBB SIL, 43 
CMP RDX, -14 
XOR AL, -25 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
