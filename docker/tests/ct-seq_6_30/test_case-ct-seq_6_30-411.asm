.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD AX, -15 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], 95 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
INC SI 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
MUL CL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DIL 
CMOVNZ AX, DX 
LEA BX, qword ptr [RDX + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DIL 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, -44 # instrumentation
MOVZX RBX, word ptr [R14 + RAX] 
LAHF  
NEG RAX 
ADD AX, 30733 
CMP AX, 78 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], CX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMP AL, -79 
ADD EAX, -2121246478 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -11 
SUB RAX, 744867309 
CMOVNBE RBX, RSI 
JNL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDX, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDX] 
CMP EDX, EBX 
ADD BX, DX 
CMOVNS EBX, EDX 
CMOVO RDI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
