.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], ECX 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], 120 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RAX, -1391016373 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], AL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 108 
SUB AL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
AND RDX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RBX], 98 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
ADC RAX, -712509011 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
CMP SI, 113 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
