.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 104 # instrumentation
CMOVBE EDI, EDX 
SBB EBX, EAX 
ADC DL, AL 
CMP AX, -27788 
CMOVNBE EAX, EDI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RCX] 
INC SI 
ADD RDI, RCX 
MOVZX RCX, CX 
SUB RAX, RAX 
ADC RDI, RBX 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RAX] 
MUL EAX 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RSI], 122 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
IMUL SI 
AND RDX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RDX] 
ADD DIL, 82 # instrumentation
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDI] 
ADC AX, -10315 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EAX 
LAHF  
LEA EDI, qword ptr [RBX + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], 20 
ADC CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
