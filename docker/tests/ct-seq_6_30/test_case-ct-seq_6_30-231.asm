.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
SUB EAX, 954112916 
INC DL 
SBB SIL, -94 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDI] 
CMOVBE CX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RDX] 
CMOVNB EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], DI 
SUB CX, -81 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 15 
JMP .bb_main.2 
.bb_main.2:
CMP ECX, -103 
SBB RAX, 306247724 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
DEC DL 
CMP SIL, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL RBX, RCX 
CLC  
OR CX, 0b1000000000000000 # instrumentation
BSR DI, CX 
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RCX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RAX], 66 
ADD EDX, ECX 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP SIL, -16 
SBB AL, 56 
CMP ECX, EAX 
ADD DIL, -109 
DEC RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
