.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
CMOVNBE EBX, ESI 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 89 # instrumentation
CMOVNP EDX, EBX 
IMUL ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CWD  
AND RSI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RSI] 
SBB AX, 1285 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], DX 
JNS .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RAX], -76 
CMOVBE AX, BX 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
INC EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
CMOVZ EBX, EDX 
INC RSI 
ADC ESI, EDX 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
MOVZX EDI, AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
CDQ  
ADC EDX, 13 
JNO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RCX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SUB DIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
