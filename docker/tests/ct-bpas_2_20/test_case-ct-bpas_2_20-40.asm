.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RAX] 
ADC DL, 14 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
DEC CX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 44 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
MOV EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
MUL ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RCX] 
CMP AL, -10 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
