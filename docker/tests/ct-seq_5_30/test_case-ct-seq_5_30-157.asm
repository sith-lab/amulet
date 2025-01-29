.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
ADD DIL, 20 # instrumentation
XCHG DX, BX 
CMOVNL RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
CDQ  
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], 109 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -55 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -78 
CMOVNB RDX, RDI 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
NEG RDI 
SBB DL, -15 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], 13 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], 83 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 93 # instrumentation
CMOVNL EBX, ECX 
SUB AX, 5421 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RCX], EDX 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
IMUL DI, DX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
DEC DI 
CMOVNB EAX, EDX 
SUB RDX, 3 
CMOVS RDX, RAX 
ADD EDI, EBX 
NEG RDI 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
CBW  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
