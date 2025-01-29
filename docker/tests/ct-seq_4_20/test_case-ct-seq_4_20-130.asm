.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], 43 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 103 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX], 112 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
MOVSX DI, DL 
ADC AX, -5150 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CDQ  
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
STC  
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
