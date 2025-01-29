.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RAX] 
SBB DIL, -74 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
ADD EAX, 1486111972 
NEG ECX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], DI 
SUB RAX, RBX 
CMP EAX, -231842672 
OR BX, 0b1000000000000000 # instrumentation
BSF DI, BX 
ADD SIL, 111 # instrumentation
ADC DX, -94 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 105 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
AND RSI, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RDI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RDI] 
CMP AL, CL 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], CL 
MOV RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 66 
MOV ECX, EDX 
CMOVP RCX, RCX 
ADC BL, DL 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], BX 
CMOVNB DI, DX 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RCX] 
ADD SIL, 92 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
