.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CMP AL, -31 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RCX] 
CMPXCHG EDI, EAX 
AND ECX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RAX] 
CMOVS EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSW  
CMP DX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
CMP DIL, -75 
INC BL 
JB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL AX 
SUB RBX, -61 
MUL RDX 
ADD SIL, -65 # instrumentation
CMOVNB RBX, RDI 
SETNBE CL 
CMOVNBE RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDX] 
CMOVNL RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RBX] 
TEST RSI, -379311105 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RDI] 
TEST RDX, RBX 
INC ECX 
AND AX, 25162 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 31 
CMOVNB EAX, ECX 
SUB RSI, 70 
XCHG EBX, EAX 
CMOVLE RSI, RCX 
JMP .bb_main.2 
.bb_main.2:
ADD BL, BL 
MOV AX, DX 
CMOVL RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RCX] 
CMOVLE RDX, RDI 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RDI] 
INC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
