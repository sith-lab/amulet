.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -105 # instrumentation
CMOVBE RCX, RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
MOVZX SI, AL 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RAX] 
CMOVNS RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 74 
AND RBX, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RBX] 
CMOVZ CX, AX 
JMP .bb_main.2 
.bb_main.2:
MOV EAX, EDI 
IMUL DX, SI, 4 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
XCHG EBX, EAX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, 118 # instrumentation
CMOVNBE RCX, RCX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], 88 
MOVSX EDI, BL 
CMOVB BX, CX 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
IMUL EDI, EBX, -93 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
JMP .bb_main.5 
.bb_main.5:
XCHG RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RSI], DL 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
