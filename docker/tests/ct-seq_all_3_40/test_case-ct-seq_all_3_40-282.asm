.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG BL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
XCHG SI, AX 
DEC EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
MOVSX EDX, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDX] 
CMP RAX, -1952269245 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], CL 
CMP EBX, EDX 
CMP DIL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], CL 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RBX] 
ADC BL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RAX 
OR EDI, 1 # instrumentation
AND EDX, EDI # instrumentation
SHR EDX, 1 # instrumentation
DIV EDI 
ADD DIL, 8 # instrumentation
CMOVNL RSI, RDX 
SUB AX, -12419 
SBB RAX, 597673761 
SUB AX, 59 
MOV CX, -31389 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
SETL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
CMPXCHG BL, DIL 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -9 # instrumentation
CMOVB EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], -1793742415 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], CL 
CMOVNBE RAX, RDI 
XOR BX, -1 
CMOVNB RDI, RSI 
ADC RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
ADD RAX, 1733675212 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
