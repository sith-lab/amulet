.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 112 
XOR DI, 61 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], -110 
XADD DL, SIL 
SBB DI, BX 
AND RAX, 0b1111111111111 # instrumentation
SBB RDX, qword ptr [R14 + RAX] 
MUL BL 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RBX 
TEST AL, -113 
XOR CX, -103 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RBX] 
IMUL RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], 120 
XOR DI, 24 
ADC RAX, -592503267 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RDX] 
CMP DI, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], EDX 
SETNP BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], -34 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], AL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD BX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RAX] 
NOT AL 
SUB SIL, 117 
DEC BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RSI] 
MOVZX SI, AL 
CMOVLE RDX, RCX 
XOR AX, 79 
CMOVB ESI, ESI 
CDQ  
OR EAX, -1853565829 
MUL EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
