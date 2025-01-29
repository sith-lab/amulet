.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP DL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -48 
IMUL DX, SI 
ADD DIL, -58 # instrumentation
CMOVLE RAX, RAX 
AND RBX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], CL 
DEC DX 
SETLE CL 
CMOVO EAX, EDI 
OR EDI, EDX 
SUB RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RDX] 
SBB AX, SI 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD RCX, RBX 
INC EAX 
ADD AL, 111 
AND RDI, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RDI] 
CMOVNP EDI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
CMP CL, 0 
IMUL EDI 
XOR BL, SIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
OR AX, 0b1000000000000000 # instrumentation
BSF CX, AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
CMOVBE CX, SI 
AND RAX, 478899744 
JMP .bb_main.2 
.bb_main.2:
CLD  # instrumentation
ADD DIL, -46 # instrumentation
DEC SI 
ADC DIL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], CX 
CMOVNB DX, AX 
SBB DIL, BL 
SUB AX, 7451 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
CMP BL, DL 
AND RDI, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDI] 
MOVSX BX, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
