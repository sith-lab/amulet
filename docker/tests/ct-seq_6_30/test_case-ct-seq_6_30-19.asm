.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], 77 
CMOVP EAX, ESI 
CMOVO DI, CX 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
ADC CL, AL 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
ADC DI, BX 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RBX] 
SBB AL, -23 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RSI] 
ADC CX, 110 
AND RSI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RSI], 115 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
CMP ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
MOV RDI, RBX 
JMP .bb_main.4 
.bb_main.4:
MOV DL, -100 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
CMOVP RSI, RBX 
MUL BL 
CMP RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], CL 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
CMP RDI, 92 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], 96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
