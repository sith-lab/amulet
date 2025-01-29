.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], 4 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RDI] 
CMP RDX, RDX 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
CMOVBE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RSI] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 68 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RBX] 
CMP AL, 84 
AND RDX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
