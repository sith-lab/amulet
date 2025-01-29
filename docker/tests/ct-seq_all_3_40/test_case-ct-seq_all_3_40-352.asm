.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
ADD SIL, -99 # instrumentation
SBB EDI, 93 
MOV RAX, RDI 
SUB EBX, 96 
OR RAX, RDX 
XCHG CX, AX 
AND RDI, 0b1111111111111 # instrumentation
SUB SI, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSB  
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], RCX 
AND RCX, RDX 
OR CX, 0b1000000000000000 # instrumentation
BSR AX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -43 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
CWD  
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], CL 
NOT DI 
SETB AL 
CMC  
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSD  
SUB EAX, 715489044 
MUL ESI 
XOR DIL, 122 
SETNP DL 
ADC SIL, 11 
ADC EAX, EDI 
AND AL, 44 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -125 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EBX 
SETNLE CL 
XADD ESI, EAX 
XOR AX, 13494 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
CMOVBE RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
