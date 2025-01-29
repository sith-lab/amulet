.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RSI], 120 
CMOVNLE SI, CX 
IMUL ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], 71 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RDI] 
CMOVNO EDI, ESI 
MUL SIL 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
OR EDX, 1 # instrumentation
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD SIL, -45 # instrumentation
CMOVBE RCX, RBX 
MOVZX RBX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 123 
XCHG AL, CL 
CMOVB SI, SI 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
XCHG AX, DX 
IMUL DIL 
ADD DIL, -6 # instrumentation
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CBW  
AND RDI, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDI] 
CMOVBE EAX, EDI 
CMOVL EDX, ESI 
ADC AX, -56 
AND RAX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RAX] 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
NEG SI 
MOV DL, 127 
ADC DL, 16 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
