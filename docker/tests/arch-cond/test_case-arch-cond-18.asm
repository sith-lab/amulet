.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
ADD SIL, 11 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], RCX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
SETS SIL 
AND RSI, 0b1111111111111 # instrumentation
ADC DI, word ptr [R14 + RSI] 
MOVZX EBX, DL 
CMP RAX, 56 
TEST RBX, 1970906584 
JMP .bb_main.1 
.bb_main.1:
OR BL, CL 
NEG EBX 
IMUL RDX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 0 
XOR RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RCX] 
XOR AX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 73 # instrumentation
CMOVL RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RSI], EAX 
ADC RCX, -115 
ADD RBX, 15 
SAHF  
DEC CL 
CMP SI, -89 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
CMOVNZ BX, DX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RBX 
ADC RSI, 60 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], EAX 
CMOVL RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], AL 
CMOVNL AX, BX 
NEG AL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
CMOVNS ESI, EBX 
OR CX, -37 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
