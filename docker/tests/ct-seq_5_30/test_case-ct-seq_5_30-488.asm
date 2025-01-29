.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -58 # instrumentation
CMOVNO EDX, EAX 
IMUL RAX, RDX 
MOV DI, SI 
SBB RSI, RBX 
SBB EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RSI 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
CMOVZ EDX, ECX 
JMP .bb_main.1 
.bb_main.1:
CMP DIL, 53 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
SBB CL, -18 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
SBB EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], BL 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], AL 
SUB EAX, -415398596 
AND RDX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -54 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -29 
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
CMOVL BX, BX 
CMOVNLE SI, DI 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
