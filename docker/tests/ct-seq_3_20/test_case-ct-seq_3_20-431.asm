.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], DL 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -803405790 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -40 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 24 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], AX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 72 # instrumentation
CMOVNBE RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
ADD EAX, -62 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1490446230 
MOV CL, 65 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 97 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RAX] 
SUB EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -61 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], DX 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
