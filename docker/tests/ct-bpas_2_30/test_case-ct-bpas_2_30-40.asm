.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], 98 
ADD AX, 20305 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], 101 
ADD AL, 99 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
AND RAX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 36 
CMOVNBE RDI, RCX 
SBB AX, SI 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RCX] 
ADC AL, -85 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RCX] 
SBB DIL, -39 
ADC CX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
SUB EAX, -1462927077 
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
ADD EAX, -91 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 2079558377 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
