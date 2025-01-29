.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 127 # instrumentation
MOV AL, DL 
SBB EBX, -127 
OR CX, 0b1000000000000000 # instrumentation
BSF SI, CX 
OR RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
CMP RDX, -104 
OR BX, DI 
CMOVLE RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RBX] 
ADD SIL, -85 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 31 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
CMOVBE AX, DX 
CMOVNB DX, BX 
SUB EBX, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDX], -88 
MOVSX EDI, CX 
NOT SIL 
ADD EDI, -10 
AND RAX, 0b1111111111111 # instrumentation
IMUL RBX, qword ptr [R14 + RAX], 100 
NEG BL 
AND CL, BL 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], 124 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD SIL, -71 # instrumentation
CMOVNB EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], CL 
SETNZ DL 
CMP RCX, 2 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV RDX, 3512526754053808689 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
CMOVNP EAX, ESI 
MOVZX ESI, BL 
AND RDI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RSI], DI 
CMOVNO RAX, RDX 
SUB SIL, -95 
OR RDI, -84 
DEC DX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
