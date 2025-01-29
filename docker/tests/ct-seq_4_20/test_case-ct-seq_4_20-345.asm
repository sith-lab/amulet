.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 72 
DEC CL 
XCHG BX, AX 
CMOVNLE ECX, EAX 
ADD EDX, EDI 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], RBX 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
SUB SIL, -100 
ADD RSI, -110 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], BL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -63 
AND RAX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RBX], SIL 
JMP .bb_main.3 
.bb_main.3:
CMP ESI, -68 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
CMOVZ AX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RDX] 
OR SI, 1 # instrumentation
AND DX, SI # instrumentation
SHR DX, 1 # instrumentation
DIV SI 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
