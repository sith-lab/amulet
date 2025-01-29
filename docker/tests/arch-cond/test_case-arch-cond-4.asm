.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RAX] 
TEST DI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RCX] 
ADC AX, -25634 
OR AL, 62 
OR DX, 0b1000000000000000 # instrumentation
BSR SI, DX 
ADD DIL, -117 # instrumentation
SBB RAX, 1636975808 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
ADC DX, 84 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -84 # instrumentation
CMOVNZ AX, AX 
XCHG RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], BX 
SUB ESI, EAX 
MOVZX DI, AL 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EDI 
ADC RSI, -122 
XADD DL, CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
ADD DIL, 72 # instrumentation
MOV CL, SIL 
SETNBE AL 
SETBE AL 
SETS SIL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RSI] 
IMUL RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
TEST CL, AL 
JMP .bb_main.2 
.bb_main.2:
MOVZX AX, CL 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RDI] 
ADC RCX, RSI 
TEST CL, 91 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RBX] 
CMC  
ADC DX, DI 
XCHG RCX, RSI 
CMP RSI, -19 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
