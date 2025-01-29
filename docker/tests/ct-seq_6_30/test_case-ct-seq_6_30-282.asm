.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], 4 
ADC EBX, -31 
JNBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ECX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
ADC DL, 56 
MOVZX RDI, CX 
CMOVLE RDX, RSI 
INC SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RBX], 20 
SBB DIL, DL 
JRCXZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RBX] 
JNL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -62 
AND RDI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RDI] 
JMP .bb_main.4 
.bb_main.4:
SUB BL, 95 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
CMP DIL, 80 
ADC EAX, -16 
MOV DI, BX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RBX] 
ADD SIL, -55 # instrumentation
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CMP BL, BL 
MUL RDX 
CMC  
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RBX] 
SBB DIL, 80 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
