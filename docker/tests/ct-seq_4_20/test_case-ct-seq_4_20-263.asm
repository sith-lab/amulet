.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], 119 
AND RDI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], -15 
DEC DI 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RBX], 67 
ADD DIL, -65 # instrumentation
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], DIL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
