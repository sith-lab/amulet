.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 95 # instrumentation
CMOVB SI, AX 
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
CMOVNL RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
MOVZX DX, SIL 
NEG EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], -68 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 82 # instrumentation
SBB EAX, 108 
DEC ECX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -68 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], DIL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -11 # instrumentation
CMOVB AX, CX 
ADC SIL, -13 
SUB EAX, -645609292 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
DEC RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
CMOVNO AX, CX 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -64 # instrumentation
CMOVBE RCX, RAX 
IMUL SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
ADD AX, 27529 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RSI] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
