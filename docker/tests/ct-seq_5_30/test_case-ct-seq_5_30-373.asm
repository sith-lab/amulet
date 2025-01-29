.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
INC EBX 
NEG SIL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
SBB ECX, -31 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], DI 
JMP .bb_main.1 
.bb_main.1:
CMP DL, CL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], -73 
CMOVNZ DI, SI 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -112 # instrumentation
CMOVZ CX, CX 
AND RSI, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RAX], -43 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
IMUL DX, SI 
AND RSI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
IMUL EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RDI] 
JRCXZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
XCHG SI, AX 
LEA ESI, qword ptr [RSI] 
SUB RBX, 82 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDX] 
MOVZX EDI, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
