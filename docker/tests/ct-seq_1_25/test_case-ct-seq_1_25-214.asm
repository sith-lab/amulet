.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, 69 
AND RDX, 0b1111111111111 # instrumentation
IMUL AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], EBX 
BSWAP RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 62 
MOVSX BX, BL 
CMOVZ RDX, RBX 
CLC  
AND RDX, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDX] 
MUL BL 
SUB EAX, 1412520584 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], DIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], -12 
DEC BL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DIL 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RSI] 
NEG AL 
ADC ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], -24 
CMOVO RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
