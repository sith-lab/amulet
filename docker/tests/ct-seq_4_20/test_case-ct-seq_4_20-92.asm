.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RDX] 
ADC RAX, -823792056 
SUB BL, DL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
JNS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
MOV DI, -12330 
CMP RAX, 558135574 
AND RCX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RCX], 26 
AND RDI, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
OR DX, 0b1000000000000000 # instrumentation
BSR SI, DX 
AND RCX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
MOV ECX, 1586870517 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], 42 
MUL RCX 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], 9 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
