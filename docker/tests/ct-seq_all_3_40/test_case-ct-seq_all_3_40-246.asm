.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], -53 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], AL 
XADD CX, SI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], SIL 
NOT BL 
ADD CX, DX 
CMOVNL RDI, RDX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RAX] 
INC AL 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RBX] 
MOVZX DX, BL 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
LEA BX, qword ptr [RDX + RCX + 18303] 
AND RSI, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RSI] 
CMOVNBE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
XOR AX, -21496 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMP DI, word ptr [R14 + RDX] 
ADD DL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RAX] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 122 # instrumentation
CMOVS EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 117 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 114 
CMOVP EAX, EDI 
NEG AL 
SETS CL 
SUB EDI, EAX 
SETS SIL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1840134992 
SETNLE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
