.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMOVL DI, AX 
SUB EAX, 1481159264 
XOR AL, -28 
IMUL DL 
TEST RAX, RDX 
SBB AX, -31 
TEST DIL, 12 
IMUL EDX 
ADD DIL, -6 # instrumentation
CMOVNLE AX, DI 
NEG SIL 
SETNZ DL 
CWDE  
XCHG DX, AX 
DEC RBX 
MOVZX RDX, SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RSI] 
SETNS AL 
ADC RCX, RDI 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -92 # instrumentation
CMOVNB DI, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -27740 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 36 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], DL 
SETNS AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
CMOVNLE DI, DI 
CMOVZ RDI, RAX 
CMOVNB RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DX 
MOV BL, AL 
SETNS DL 
SUB BL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RBX 
AND RDX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RDX] 
SBB RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RCX 
ADD ESI, EBX 
SUB RDX, 109 
SBB RAX, 199464730 
AND RSI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
