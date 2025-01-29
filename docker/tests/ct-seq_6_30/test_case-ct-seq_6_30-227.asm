.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB EDX, 117 
ADD DI, -38 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -106 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
IMUL BX 
ADD SIL, 56 # instrumentation
CMOVNS DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], 61 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], DL 
SBB CX, CX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
ADC AX, 32390 
ADC RCX, 22 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
MOV EDX, EDI 
JMP .bb_main.4 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
NEG DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RCX] 
SBB EAX, -380690043 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 2 
LAHF  
JNLE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], CL 
ADD SIL, 24 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
