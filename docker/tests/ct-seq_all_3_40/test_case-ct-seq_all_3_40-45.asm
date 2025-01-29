.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, DIL 
CMOVNL SI, BX 
SETZ DL 
OR DIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV DIL 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 79 
AND SI, -28 
CLD  
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG SIL, AL 
XADD DL, CL 
AND RAX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RAX] 
XCHG SI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -32 # instrumentation
CMOVBE ESI, ECX 
CMP RAX, 91 
DEC AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 84 
AND RAX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RAX], 1 
CMOVZ BX, CX 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], -55 
CMOVNLE EDX, EDI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
ADD DIL, 126 # instrumentation
SETNL CL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
NOP  
AND RDX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
STD  
MOV AL, 100 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RBX 
CMOVNLE RDX, RAX 
CMC  
CMOVNB RBX, RAX 
MOVSX AX, CL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSB  
XADD RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
