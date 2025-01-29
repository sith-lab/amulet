.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RSI] 
CMOVNZ CX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 20 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 75 
IMUL EAX, ECX, -58 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], BL 
MOVZX EDX, AL 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], EBX 
XCHG RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], 109 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD CX, 11 
MOVZX EAX, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], DIL 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 95 # instrumentation
ADC BL, -35 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
