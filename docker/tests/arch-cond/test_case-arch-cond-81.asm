.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, DX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], 55 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
ADD SIL, 24 # instrumentation
CMOVB RSI, RCX 
TEST DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
AND RSI, 0b1111111111111 # instrumentation
OR BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDI] 
SBB RAX, -1434208529 
AND RAX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RAX], -127 
XADD RBX, RAX 
AND RAX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], ESI 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
XOR RAX, 979575068 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -47 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -13 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], CL 
AND RBX, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RCX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RCX] 
CMP DIL, 107 
INC DL 
CMOVL RDX, RSI 
LEA RCX, qword ptr [RCX + RDI] 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -103 # instrumentation
SETNL SIL 
CMOVO RAX, RAX 
ADC CX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDI] 
JBE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RDI] 
MOV EAX, 1931530457 
AND RCX, 0b1111111111111 # instrumentation
SBB BL, byte ptr [R14 + RCX] 
CMOVNZ EDX, EDI 
CMP ESI, 111 
CMP DL, AL 
ADD RAX, -644159670 
ADD RCX, -27 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
