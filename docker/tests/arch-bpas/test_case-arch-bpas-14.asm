.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
SBB RAX, -721332523 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
AND RAX, -1464734727 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RCX] 
OR EBX, -54 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
SETNBE AL 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RDX] 
CMP EAX, -1184654623 
ADD EAX, 1521897222 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], BL 
JNBE .bb_main.2 
JMP .bb_main.5 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RDI] 
CMOVZ SI, DI 
NEG BL 
XOR EAX, -1029786473 
AND RAX, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RAX] 
ADD BL, DIL 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
BSWAP EDX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DL 
CMOVNBE EBX, ESI 
CMOVNZ RCX, RCX 
JMP .bb_main.4 
.bb_main.4:
CMP AX, 14505 
CMOVNBE RDX, RDI 
ADC SIL, 69 
CMP AL, -79 
SETL BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDI] 
ADC RDX, RSI 
ADD AL, 16 
AND RDI, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDI] 
SETBE AL 
JNB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
MUL BL 
TEST AX, -20122 
MOVZX ECX, DIL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
