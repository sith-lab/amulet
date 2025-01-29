.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -50 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RSI], 71 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
MOV SI, -26869 
CBW  
SUB AL, 46 
STD  
AND RCX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], 82 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
CDQ  
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
ADD EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 61 # instrumentation
CMOVNL RSI, RDX 
SBB BX, DX 
OR SI, 0b1000000000000000 # instrumentation
BSR SI, SI 
ADD SIL, 0 # instrumentation
CMOVNBE EDI, EAX 
CMP DL, AL 
MOV RAX, 3467221930216575380 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], DI 
CMOVNO EAX, ECX 
CMOVNL DI, DX 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RAX] 
SUB DIL, 43 
CMOVBE RDX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
