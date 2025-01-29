.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
ADD SIL, 113 # instrumentation
CMOVB RSI, RCX 
STC  
CMOVZ RSI, RAX 
CMP DL, CL 
SETNS BL 
XCHG DIL, CL 
SETO BL 
AND RSI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
SETS AL 
TEST RAX, -789100759 
MOVZX EDI, DL 
AND AL, 105 
CMPXCHG SI, DI 
CMOVLE DX, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -39 # instrumentation
MOV RAX, RBX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDI], ESI 
IMUL AX, CX 
MOV BL, BL 
CMPXCHG SIL, CL 
ADC SI, AX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
IMUL ECX, ESI 
SETNB SIL 
JMP .bb_main.2 
.bb_main.2:
NEG BL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], SIL 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
OR AX, 23085 
NOP  
CMOVNZ RCX, RCX 
INC DL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], DX 
CMP BX, -11 
SETL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
