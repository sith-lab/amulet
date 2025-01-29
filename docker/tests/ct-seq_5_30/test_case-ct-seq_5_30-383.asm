.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 53 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RDX] 
ADD SIL, 100 # instrumentation
CMOVNO EBX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], -7 
CMOVZ BX, DI 
MOV RCX, -7848077969732917730 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 89 # instrumentation
CMOVZ RBX, RSI 
CMOVNZ RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
ADD RSI, -20 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], DL 
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MOV RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], DL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX], -73 
ADD RAX, -868483519 
CMOVBE SI, BX 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ESI 
CLD  
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -93 # instrumentation
CMOVNS RSI, RDI 
CMP EAX, -54279891 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DIL 
INC EDX 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
