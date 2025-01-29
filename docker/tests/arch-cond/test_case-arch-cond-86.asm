.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
CMOVL DI, CX 
DEC DL 
STD  
MOVSX EDI, AL 
XOR DI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -40 
CMOVL ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 90 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
CMP RSI, RBX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], SI 
SETLE DL 
TEST DX, DX 
CMPXCHG DL, AL 
OR DI, -59 
CMP DIL, 121 
NEG AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVL RSI, qword ptr [R14 + RDI] 
NOT ECX 
NOT SI 
ADC RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
TEST BL, 22 
AND BX, DI 
CMOVNL EDX, ECX 
XOR ECX, -125 
ADD DIL, -124 # instrumentation
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RDI 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
OR SI, 0b1000000000000000 # instrumentation
BSR DX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EDI 
XOR AL, -110 
SETL CL 
SETLE AL 
MUL SI 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
CMOVNS RDI, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
