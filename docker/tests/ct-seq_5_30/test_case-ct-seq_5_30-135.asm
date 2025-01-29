.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 60 # instrumentation
CMOVBE DX, BX 
CMOVNB EAX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
MOV SI, 9185 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RCX] 
CMOVNZ RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], BL 
JNS .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
ADD DIL, 108 # instrumentation
CMOVNZ DI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 78 
LEA EDI, qword ptr [RDX + RDI] 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
ADD SIL, -106 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 38 # instrumentation
SBB RAX, -1216960665 
SBB DIL, DL 
ADC RDX, RCX 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX], 36 
AND RDI, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RDI] 
MOV DIL, -22 
ADD DIL, -54 
ADD AX, 14802 
ADD EAX, 209949392 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RSI 
IMUL EBX 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 101 # instrumentation
CMOVNP AX, DX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
