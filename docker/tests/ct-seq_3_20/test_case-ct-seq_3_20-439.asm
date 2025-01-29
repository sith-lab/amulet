.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 123 # instrumentation
CMOVNL ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -73 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDX] 
SBB DIL, -47 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RAX], SI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
ADC ESI, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 42 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EAX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -514924466 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
MOVZX EDX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
