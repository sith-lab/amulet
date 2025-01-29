.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], AL 
CMOVL CX, DI 
CMPXCHG EAX, EBX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
SUB EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 18 
MOV AL, 117 
XOR ESI, -41 
CMOVNZ RDX, RBX 
IMUL EDI, EDX, -122 
ADD SIL, 18 # instrumentation
SETL CL 
SBB ECX, EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RSI] 
SBB DL, BL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 39 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], EDX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD SIL, 94 # instrumentation
SETL AL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RDX 
SBB DIL, -60 
CMOVP RDX, RDI 
ADD AL, 88 
SETLE DL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD CL, CL 
CMOVBE RDX, RAX 
INC CL 
ADC DL, DL 
LAHF  
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
IMUL EBX 
BSWAP RSI 
MOV DL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADC SI, word ptr [R14 + RSI] 
ADC SI, -66 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, byte ptr [R14 + RDX] 
DEC AX 
SBB AL, CL 
TEST EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
