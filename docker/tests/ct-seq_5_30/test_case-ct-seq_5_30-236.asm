.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP AL, 85 
CMOVL RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
LEA RDX, qword ptr [RAX + RDI + 5281] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDI] 
SUB CL, 71 
SUB RAX, 1053127340 
ADC AL, -32 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -48 # instrumentation
CMOVZ EAX, EDX 
CMOVNP EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], AL 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ECX, dword ptr [R14 + RBX] 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
SBB RAX, -384052765 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB SI, word ptr [R14 + RBX] 
XCHG EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
INC BX 
CMOVNB SI, CX 
CBW  
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RBX 
ADD CL, -101 
JMP .bb_main.4 
.bb_main.4:
DEC BL 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], 1622443115 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
