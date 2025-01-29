.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
JS .bb_main.1 
JMP .bb_main.5 
.bb_main.1:
ADD AX, -1570 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
SBB EDX, 18 
MOVZX SI, AL 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RAX], 123 
AND RBX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RBX] 
SBB RSI, RDI 
CMOVZ RSI, RBX 
ADD CL, AL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
CMOVB DX, DI 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR SI, 0b1000000000000000 # instrumentation
BSF AX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], DL 
MOV CL, -70 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -113 
JMP .bb_main.4 
.bb_main.4:
MOVSX ECX, BX 
AND RSI, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RSI], -29 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -84 
SBB AL, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
STD  
JRCXZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
INC RSI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
INC CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
