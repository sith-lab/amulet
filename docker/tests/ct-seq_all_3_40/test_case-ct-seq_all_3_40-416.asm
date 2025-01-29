.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RSI 
OR CL, AL 
CMOVB RSI, RBX 
CMOVP RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 83 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], 83 
ADD AX, 12222 
SUB AL, AL 
DEC DL 
MOVZX SI, DL 
SBB DX, 107 
OR AL, -112 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 11 # instrumentation
SETBE CL 
MOVZX SI, BL 
CMP SI, -5 
SUB DL, 96 
AND RAX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RAX] 
XOR RAX, 2023758926 
TEST RSI, -1683148531 
SUB EDI, -37 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], BX 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], ESI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
XOR AX, 112 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDI] 
ADC EAX, -333656943 
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
ADD DIL, 22 # instrumentation
CMOVNS RSI, RCX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD SIL, 43 # instrumentation
CMOVLE BX, DX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 104 
AND RSI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RSI] 
IMUL BL 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], -57 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
