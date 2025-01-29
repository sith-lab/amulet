.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
DEC BX 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
ADC AX, DI 
CMP EAX, 2088343923 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], DL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
ADD CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], 29 
LAHF  
CMOVBE DX, AX 
CMOVZ AX, AX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP EAX, -1886541034 
XCHG RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -126 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
MOV DL, -38 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -21 
CMP EDX, -71 
CMOVNB EDI, EAX 
JMP .bb_main.4 
.bb_main.4:
MOV RBX, 1273912384088508836 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RSI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
DEC CX 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RBX 
SUB EAX, -271941187 
ADC DIL, 58 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
