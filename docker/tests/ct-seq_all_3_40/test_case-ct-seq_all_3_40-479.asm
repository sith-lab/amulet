.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
SUB RSI, 61 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -121 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ECX 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
ADC AL, -42 
LEA EAX, qword ptr [RSI + RDI] 
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RAX] 
CMOVNBE SI, SI 
CMC  
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
TEST SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], CX 
XCHG CL, AL 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RBX 
TEST AL, -61 
AND RAX, 0b1111111111111 # instrumentation
SUB DIL, byte ptr [R14 + RAX] 
CMP SIL, AL 
AND RDX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDX] 
ADD SIL, -70 # instrumentation
SETP BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RCX] 
ADD DIL, -38 # instrumentation
CMOVS ECX, ESI 
MOVZX EAX, CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RBX] 
MOVSX RAX, SI 
SUB EDX, EAX 
AND RAX, -451790723 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RAX, -1350985252 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], BX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RCX] 
TEST AL, -89 
AND RSI, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RSI] 
ADD EDX, 66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
