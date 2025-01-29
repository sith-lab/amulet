.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RDI] 
MOV ECX, EBX 
ADD EAX, 1747851204 
SETNLE BL 
CLD  
AND CL, CL 
CMP BL, BL 
CMOVBE RDX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RSI] 
ADD CL, DL 
MUL ESI 
ADD SIL, -117 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
IMUL SI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -38 
INC RBX 
AND RBX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RBX], 44 
SUB BL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], 86 
CMOVL SI, BX 
CMOVNL RDI, RDX 
MOV ECX, ESI 
SUB DIL, -8 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -109 
CMOVNB EDX, ESI 
XOR RBX, -64 
CMOVL RDX, RAX 
LEA EDI, qword ptr [RDX + RAX + 27215] 
MOVSX EBX, BX 
CDQ  
SETS AL 
ADC AL, -52 
NEG AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], BL 
SUB EAX, 1913505837 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
