.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -24 # instrumentation
SBB RAX, RDI 
CMOVNS EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDI] 
CMP EAX, -667670458 
ADC BL, -24 
XOR EAX, -421320048 
XCHG ESI, EAX 
CMOVB EBX, EBX 
CLD  
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], 43 
XOR AX, 21813 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 87 # instrumentation
CMOVNLE SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], -97 
AND AL, -78 
AND RDX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDX] 
OR CX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
XOR DX, BX 
ADC AL, -85 
XOR BX, DX 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND AL, -56 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DI, 1007 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
CMOVNZ RCX, RBX 
AND BL, CL 
OR RDI, RSI 
CMP SIL, AL 
MOVSX AX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], 80 
CMOVNL CX, AX 
CMOVNS SI, DI 
CMP CL, -73 
CMP DL, 101 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RBX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
IMUL EBX, EAX, -72 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], DX 
SETNLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
