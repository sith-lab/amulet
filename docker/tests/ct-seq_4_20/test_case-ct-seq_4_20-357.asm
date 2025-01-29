.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MUL CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB RSI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -26 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX ESI, AX 
CMP AL, 89 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], RDI 
CMOVNL CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDI], BL 
STD  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], -85 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
IMUL SI, CX, -80 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
