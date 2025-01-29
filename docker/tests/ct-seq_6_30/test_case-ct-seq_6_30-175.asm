.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD BL, BL 
DEC EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
ADC CX, 4 
NEG ECX 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 105 # instrumentation
CMOVLE EBX, EAX 
CMOVNO RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], BX 
MOV EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], BL 
XCHG SI, AX 
NEG AX 
JMP .bb_main.3 
.bb_main.3:
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
IMUL RBX 
DEC AL 
CMOVNS RDX, RBX 
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
CMOVBE EDX, ESI 
CMOVNL AX, AX 
MOV DI, 28869 
IMUL ECX, EBX 
ADD DIL, 37 # instrumentation
JNP .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD DIL, 115 # instrumentation
ADC DIL, 87 
CMOVO DI, DI 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 16 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDX] 
MOV EAX, -1522937994 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
