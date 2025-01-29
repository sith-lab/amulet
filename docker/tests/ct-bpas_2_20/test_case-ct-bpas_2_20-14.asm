.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], AL 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RSI] 
MOVZX RDX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
SBB RBX, 48 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], 99 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], -22 
CMOVS DI, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL RSI, RBX, -107 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RSI 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
