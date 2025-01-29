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
MOVSW  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
ADD SIL, 47 # instrumentation
CMOVNS DX, DX 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDI] 
ADC RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
ADD RAX, -311579548 
SUB AL, -70 
CMOVO RBX, RDI 
ADD RAX, 1914661977 
CMP AL, 11 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
OR RCX, 109 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
XOR DIL, 66 
XOR AX, 18923 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
XADD BL, BL 
SUB AL, 102 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], CL 
TEST BL, CL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RBX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -71 # instrumentation
NOT RDX 
CMOVZ RAX, RDI 
CMOVZ ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
MOVZX RSI, CL 
INC CL 
XOR AL, 79 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ESI 
AND SI, DX 
NOP  
SETNO SIL 
OR CX, CX 
MOVZX EAX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
