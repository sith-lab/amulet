.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST CL, BL 
CMOVNO RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RSI], -16 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 123 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], CX 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
ADC SIL, -80 
XCHG CL, DL 
XOR AX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -90 
AND RAX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RCX 
JMP .bb_main.1 
.bb_main.1:
MUL RDX 
AND AL, -25 
CMP AL, -9 
AND RAX, 0b1111111111111 # instrumentation
SBB RAX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 89 
OR AL, 46 
MOV DL, BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], 67 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, -75 # instrumentation
SETB DL 
SETNO BL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
TEST EDI, -922363108 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], -22 
ADD RSI, RAX 
MOV SIL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RAX] 
AND SIL, 91 
ADC CL, BL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 99 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CLC  
CMOVP ESI, EDI 
SBB DI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDX], 124 
AND RBX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
