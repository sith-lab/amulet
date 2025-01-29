.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC SIL 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CMP EAX, 2051057397 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
XCHG EDI, ECX 
CMOVNLE RBX, RDX 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV CL, 38 
SUB CX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RAX] 
SUB RAX, -974316218 
NEG CL 
LEA RDI, qword ptr [RSI + RAX] 
ADC CL, BL 
ADD DIL, -29 
DEC DIL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
ADD EDI, 42 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
CMOVS EAX, EBX 
CMOVP EBX, EBX 
AND RCX, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RCX] 
IMUL DL 
ADD SIL, -115 # instrumentation
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
SUB RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RCX] 
MOV EBX, EBX 
XCHG AL, DL 
ADD AX, -34 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -36 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
