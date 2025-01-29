.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 126 # instrumentation
LEA AX, qword ptr [RBX + RDI + 30421] 
SETNL BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
XADD RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RBX] 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
IMUL EDI, ECX, -24 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RDI 
DEC AL 
AND RCX, 0b1111111111111 # instrumentation
SBB RBX, qword ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 6 # instrumentation
CMOVNBE EDI, EAX 
TEST BX, CX 
IMUL EDX 
CWD  
SBB CX, AX 
AND RDI, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RSI] 
MOVSX EAX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], EDX 
MOV SI, DX 
CMOVNS BX, AX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], CL 
CMOVS EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
STD  
MOVSX CX, SIL 
SETZ SIL 
OR SI, -97 
CMP AX, -30733 
OR EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
CMOVNP RSI, RSI 
OR EAX, EDX 
SETNB DIL 
AND RBX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RAX], 56 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
