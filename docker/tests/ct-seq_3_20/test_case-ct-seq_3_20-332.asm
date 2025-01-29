.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], DI 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
ADD DL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], AX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], -20 
SUB SIL, 118 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
IMUL SI, BX, -12 
ADD SIL, 67 # instrumentation
LAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 91 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 79 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
