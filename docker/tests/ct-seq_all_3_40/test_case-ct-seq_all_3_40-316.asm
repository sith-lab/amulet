.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], RDI 
SBB AL, -61 
AND RSI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RSI] 
MOVZX ESI, AL 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
SUB AL, 86 
DEC DIL 
DEC EBX 
AND RDX, 0b1111111111111 # instrumentation
CMP ECX, dword ptr [R14 + RDX] 
MOV DL, BL 
TEST RSI, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
CMOVO AX, SI 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -105 # instrumentation
CMOVNZ RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 13 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RCX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RCX] 
CMOVL RDX, RSI 
OR SI, 52 
ADC EAX, -67815948 
AND RBX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RBX] 
MOV EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RSI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSD  
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], DL 
SBB ESI, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 112 
SETNL DL 
SETNB AL 
MOVSX EAX, CX 
SBB ESI, -40 
AND RCX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
CMOVBE RBX, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RCX 
NOT AL 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
