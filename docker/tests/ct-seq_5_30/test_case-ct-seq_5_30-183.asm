.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 91 # instrumentation
ADC RAX, -243527504 
MOVSX RCX, DIL 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], 0 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 121 
STC  
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 26 
CMP AX, 11178 
CMOVNZ EBX, EAX 
OR CX, 1 # instrumentation
AND DX, CX # instrumentation
SHR DX, 1 # instrumentation
DIV CX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP EBX, EAX 
ADC CL, -28 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX CX, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
CMOVL RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], -125 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
IMUL RDX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], 650647478 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
ADD RAX, -1292508987 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
