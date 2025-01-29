.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -25 # instrumentation
CMOVNZ ECX, ESI 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
INC RDX 
AND RSI, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
TEST RAX, 874980234 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
XOR EAX, 291415114 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], EDI 
XCHG DI, SI 
CMOVZ BX, DX 
MOVSX CX, DIL 
AND DL, BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
SBB BL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RBX] 
CMOVS DI, DI 
XOR AL, -34 
CMP RDI, RBX 
SUB EAX, -53 
CMOVNP ESI, EDX 
AND EAX, 1995622264 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RDX 
JMP .bb_main.2 
.bb_main.2:
INC RBX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RAX 
LEA CX, qword ptr [RDX + RBX + 64043] 
XADD ESI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], BL 
OR RAX, 409277270 
SUB SIL, -127 
AND EAX, -503289779 
SAHF  
CMOVO DI, AX 
NOT DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
CMPXCHG AL, AL 
SUB RSI, 76 
CWD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
