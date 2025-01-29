.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
CMOVZ BX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDI], BL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
ADD EDI, dword ptr [R14 + RAX] 
STC  
CMOVNL RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RBX] 
SBB EAX, ESI 
ADD EAX, -2019525820 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
ADD DI, AX 
MUL CL 
ADD SIL, 108 # instrumentation
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD DIL, -21 # instrumentation
CMOVNZ EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], DIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD DIL, -101 # instrumentation
CMOVP SI, CX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RBX, qword ptr [R14 + RCX] 
JMP .bb_main.4 
.bb_main.4:
MOV AX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RCX] 
CMOVNP RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
