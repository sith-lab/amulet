.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], SIL 
DEC EAX 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DI 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], 62 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 3507 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -6 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -24 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
