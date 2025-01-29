.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NEG DL 
XCHG RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
XCHG EDX, EAX 
CMOVNO EDI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DIL 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RDX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
XCHG EAX, EAX 
ADD EAX, 1245792347 
INC DI 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
ADD RDX, RCX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 125 # instrumentation
CMOVB DI, AX 
MUL BX 
SUB AX, -21922 
SUB DIL, 56 
CMOVNS ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RSI] 
CMP CL, DL 
AND RDX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDX] 
CMOVNBE RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -106 
CMOVNZ AX, DI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RSI] 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
