.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 1 # instrumentation
CMOVP RDX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
ADC DIL, 54 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RBX] 
MOV RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], 115 
AND RSI, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RSI] 
CMP RAX, -1901153654 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
LEA EBX, qword ptr [RDX + RDX] 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RBX] 
CMP AX, -28367 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -8 
SBB AX, -12790 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 29 # instrumentation
CMOVNLE RDX, RBX 
CMOVZ RBX, RDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RCX 
NEG RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RAX] 
ADD EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
