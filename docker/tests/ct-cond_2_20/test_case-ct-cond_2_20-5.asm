.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -15 # instrumentation
CMOVS DX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], 81 
ADD EDX, -8 
MOVZX RDX, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
SBB AX, -16840 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], -55 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDI] 
DEC ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RAX] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], SIL 
INC AL 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
