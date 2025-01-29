.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EDI, qword ptr [RDI + RAX] 
ADD DL, CL 
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
DEC BX 
MOVZX RDX, CX 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], CL 
CMP EDX, -28 
MOVSX EDX, SI 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
JMP .bb_main.2 
.bb_main.2:
MOVZX RDI, DL 
SUB EAX, 725177883 
SUB BL, 121 
AND RDI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RDI] 
NEG RBX 
AND RDX, 0b1111111111111 # instrumentation
SBB CL, byte ptr [R14 + RDX] 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, -124 # instrumentation
CMOVNLE RSI, RDI 
MOVZX EAX, BX 
MOVSX EBX, DL 
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], -53 
LEA EDX, qword ptr [RDX + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -44 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], -90 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 36 
JMP .bb_main.4 
.bb_main.4:
MOVZX SI, DIL 
ADD RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RDI] 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
