.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -61 # instrumentation
CMOVNP ECX, EDI 
ADD SI, -2 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], -3 
MUL ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
CMP ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], -22739 
MOVSX EDX, BL 
OR AL, 82 
ADC RAX, 800465223 
TEST RAX, 1477511751 
MOVZX EAX, DX 
MUL AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
CLD  # instrumentation
ADD DIL, -38 # instrumentation
CMOVBE EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RDI] 
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RBX] 
OR AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
SETNO BL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
CMPXCHG RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EBX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EBX 
XCHG CL, BL 
XOR DL, -45 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], BX 
CMOVNB DI, DX 
IMUL CL 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], RBX 
AND EDX, -94 
CMP EDX, 0 
OR AX, 2058 
CMOVO EDI, EDI 
SETB SIL 
IMUL EAX, ECX, 77 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
