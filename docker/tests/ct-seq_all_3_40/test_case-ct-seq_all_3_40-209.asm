.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 54 # instrumentation
DEC RDX 
ADC SI, 123 
MOVSX EBX, SI 
AND RDI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RBX], -1415316177 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EDX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
LEA DI, qword ptr [RCX + RSI + 12798] 
XADD RCX, RAX 
CMPXCHG ECX, ECX 
AND RSI, 0b1111111111111 # instrumentation
SBB EDI, dword ptr [R14 + RSI] 
ADC AL, 107 
XCHG RBX, RAX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, -65 # instrumentation
SETL AL 
SETS CL 
TEST DI, -30589 
SETL DL 
AND ESI, -101 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], SI 
CMOVS RSI, RDI 
XCHG BX, AX 
DEC ESI 
TEST AX, -14158 
AND RDI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDI] 
ADC CL, -36 
INC RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], CX 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDX], -28 
ADD SIL, 99 # instrumentation
CMOVLE RCX, RSI 
SETNO BL 
CWDE  
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
INC AL 
LEA DX, qword ptr [RSI + RSI + 40173] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMOVNO ECX, EAX 
SETB BL 
CMOVNS EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
