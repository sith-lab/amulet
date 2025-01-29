.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SI, -49 
MOV DI, 28288 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
OR DL, 1 # instrumentation
CMOVNO ECX, EDX 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 110 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADD RDX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -23 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
SUB EAX, 532244325 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
ADC DI, -125 
CMP DX, 86 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], 70 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
