.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
OR BL, BL 
SAHF  
CMOVLE RDX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
MOVSX ECX, DL 
CMOVLE AX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RCX] 
CMOVNO EDI, EDI 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDX], RDX 
SETNB CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], SIL 
TEST ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], -40 
JMP .bb_main.1 
.bb_main.1:
TEST RAX, 2108902645 
CMOVZ DI, BX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
AND RSI, -107 
XCHG EAX, EAX 
CMOVNO RAX, RDX 
ADC RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RDI 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RSI] 
NEG BL 
CMOVNLE BX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
SUB EAX, -433848062 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
CMOVO BX, SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RSI], 100 
XOR BX, AX 
TEST EDI, -117860757 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
