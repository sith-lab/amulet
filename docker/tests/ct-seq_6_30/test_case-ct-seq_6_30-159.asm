.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], SI 
MOVZX DI, AL 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DIL 
XCHG EBX, EDX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMP RAX, 1757728888 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
ADD SIL, -93 # instrumentation
CMOVNLE RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
CMP AX, -22 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
CMOVB BX, AX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 27 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
ADC EAX, 1233833465 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RAX] 
IMUL DX 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
ADD DIL, 37 # instrumentation
JNB .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
ADD AL, 53 
NEG CX 
AND RSI, 0b1111111111111 # instrumentation
SUB ESI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RAX] 
MOV DL, 97 
SBB RAX, -920454057 
AND RAX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RAX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -82 # instrumentation
CMOVP EBX, EDI 
ADC SIL, -111 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
