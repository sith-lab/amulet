.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
TEST EAX, 1038306640 
AND RCX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RCX] 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], -47 
CMOVZ ESI, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RDX 
SBB AL, -82 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RAX], DI 
SBB EDI, 58 
MOVZX CX, CL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
CMOVNP SI, DI 
JMP .bb_main.1 
.bb_main.1:
CMP RAX, -35 
CMP CL, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RCX] 
ADC AL, -61 
CMOVNS RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RBX] 
ADD AL, 43 
JNO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -88 # instrumentation
DEC DL 
SETB DIL 
ADC EAX, -168095434 
SETL BL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
XADD DX, DX 
XADD BL, BL 
XOR ECX, 32 
AND RCX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], RDI 
MOV RCX, RAX 
TEST RBX, RCX 
XOR SI, 25 
ADD DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
