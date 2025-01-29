.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STC  
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDX] 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], BL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], BX 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RAX] 
MUL ESI 
AND RBX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RBX], CL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
CMOVBE CX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDX] 
CMP EAX, 382757245 
MOV CL, 117 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
