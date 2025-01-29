.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, 54 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], SI 
XADD DL, DIL 
ADC EAX, -2123272492 
INC ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RSI 
SBB RAX, -538644435 
LEA ECX, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RDI] 
ADC CL, -112 
ADD RAX, 121 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
MUL DI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
CMOVNP RDI, RDX 
SUB AL, 116 
CMOVNO RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
NOP  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], SI 
SUB RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RCX] 
TEST DIL, -74 
SETNL DL 
CMP SI, SI 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RSI] 
CMOVBE DI, CX 
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
CMOVL EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], DX 
CMOVO ESI, EBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDI 
MOVSX RCX, BX 
TEST RAX, -1119165956 
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
