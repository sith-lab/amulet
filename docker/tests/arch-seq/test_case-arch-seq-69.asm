.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
TEST SIL, 95 
TEST RCX, -164736315 
AND RBX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RBX] 
MUL DIL 
ADD DIL, 10 # instrumentation
CMOVNBE BX, AX 
BSWAP EDI 
SBB EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
MOV DL, DIL 
SBB AL, DL 
OR RAX, RSI 
SBB CX, -116 
NOT BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -117 
SUB RAX, -578093991 
AND RCX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RCX] 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RBX 
AND AL, 87 
CMOVNL DI, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 26 
CMOVL DI, SI 
ADC AL, DL 
ADC AX, 5582 
CMOVO DX, CX 
SBB EBX, 87 
SETBE BL 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
IMUL RBX, RDI, 33 
AND RDI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDI] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG DL, DIL 
AND EAX, -1993520610 
INC RSI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
INC BL 
SUB RSI, RAX 
TEST DI, -25670 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], DIL 
AND EAX, 2007204220 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
