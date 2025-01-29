.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 52 
IMUL BX 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
TEST RAX, -1347151299 
TEST RAX, 1232085037 
MOVZX RDX, SI 
SETZ CL 
AND RCX, 0b1111111111111 # instrumentation
CMP SIL, byte ptr [R14 + RCX] 
MOVZX ESI, DI 
XOR EAX, -1037462200 
ADC RAX, 1399834906 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
ADC RSI, RDX 
SETBE AL 
CMP BL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EDX 
NOT BX 
MUL AL 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
SETNZ DL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RAX] 
OR AX, 31039 
TEST CX, DI 
AND EDI, -58 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EAX 
ADD SIL, 44 # instrumentation
CMOVNP RCX, RDI 
ADD RAX, -633895049 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
XCHG EAX, ECX 
SBB RBX, -31 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DL 
MOVZX RSI, BL 
AND RCX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RCX] 
XOR RAX, -390388034 
TEST DIL, 23 
AND BL, DL 
CMPXCHG ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
