.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 89 # instrumentation
INC RDX 
CMOVNBE ESI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 47 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -17892 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 69 
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RDX 
ADD SIL, -102 # instrumentation
CMOVO RDX, RCX 
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], -46 
MOVZX EAX, CL 
MOVZX DI, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDI] 
LOOPNE .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDI] 
MOVSX EDI, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RCX, word ptr [R14 + RBX] 
DEC AX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 352271716 
AND RBX, 0b1111111111111 # instrumentation
SUB CX, word ptr [R14 + RBX] 
ADD CX, -118 
LOOPE .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
LEA RBX, qword ptr [RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], 96 
MOV CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -68 
IMUL AX, SI, 14 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
