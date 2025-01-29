.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
IMUL RAX 
CLD  
SBB SI, 80 
AND RAX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RAX] 
CMOVNZ AX, AX 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], CX 
JMP .bb_main.1 
.bb_main.1:
SUB AX, 4754 
ADC EDI, -109 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RCX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 91 # instrumentation
CMOVNLE RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
MOVZX CX, CL 
ADD RAX, 1619153296 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
ADD DIL, 1 # instrumentation
JNZ .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
INC EAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RSI] 
CMP BX, -61 
SUB BL, CL 
MOVSX RAX, AL 
CLD  
SBB DIL, CL 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RDI, 0b1111111111111 # instrumentation
CMP BX, word ptr [R14 + RDI] 
CMOVZ DI, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -89 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], -42 
STC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
