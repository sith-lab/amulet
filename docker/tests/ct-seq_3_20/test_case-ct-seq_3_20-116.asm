.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 29 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 72 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RCX] 
CMOVB RDX, RAX 
CMP RAX, -765462171 
SUB AL, -110 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], BX 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -54 
CMP DIL, -111 
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
