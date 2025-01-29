.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], 10 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], -72 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], 53 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RAX] 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
MUL BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], CX 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -25 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], 18 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
