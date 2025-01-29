.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -9 # instrumentation
CMOVLE RDX, RSI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDI] 
ADD EBX, -93 
MOVZX RSI, SI 
CMP RDI, RDI 
SBB AL, 117 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RDX 
JMP .bb_main.2 
.bb_main.2:
MOVZX RSI, AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI], 5 
SBB BL, -118 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
ADC ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
CMP ESI, dword ptr [R14 + RDX] 
SBB DL, BL 
CMC  
CDQ  
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -98 # instrumentation
CMOVNS RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], -3 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
SUB ESI, EAX 
JL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -107 # instrumentation
CMOVBE RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RSI] 
ADD EAX, 2140533320 
MUL ESI 
MOVZX EDI, CX 
ADC AX, -10558 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
