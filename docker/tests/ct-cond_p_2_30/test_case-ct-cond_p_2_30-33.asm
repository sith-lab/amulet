.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 55 # instrumentation
CMOVNB BX, AX 
ADD EAX, 333938208 
CMP RDI, -64 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 86 
MOVZX SI, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDX] 
SUB AX, -3 
CMP AX, 44 
OR DL, 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX], -128 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RSI] 
CMOVNL AX, DI 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 36 # instrumentation
SBB RBX, 61 
MOVZX SI, BL 
SBB AX, 24188 
CMOVB EAX, ESI 
MOV ECX, 912452781 
ADD ESI, 55 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDX 
CMOVB RDX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RBX] 
CMC  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], 1 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
