.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 122 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
MUL BL 
CMC  
INC AL 
INC EDI 
SUB EAX, 431704439 
JO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RCX] 
ADC SIL, -84 
SBB RSI, -98 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], -70 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -92 # instrumentation
CMOVL EBX, ESI 
AND RCX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RCX] 
IMUL DX, AX 
MOV AL, -30 
AND RSI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RSI], -125 
ADD DX, 93 
MOVZX RSI, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, 95 # instrumentation
DEC EDI 
CMOVBE CX, AX 
CMOVB EDI, EAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, 9 # instrumentation
SBB AX, -25138 
IMUL EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
