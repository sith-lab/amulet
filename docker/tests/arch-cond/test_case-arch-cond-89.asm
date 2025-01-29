.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 88 
ADC AL, AL 
OR RAX, -1036277375 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], BX 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
CMPXCHG SIL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
MUL AX 
TEST RCX, RCX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], 10 
CMOVNL ECX, ECX 
CMOVZ RBX, RDI 
MUL DX 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASD  
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD RBX, 97 
CMOVBE EDX, ECX 
CMOVP SI, CX 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
XADD SIL, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
MOVZX EDI, CL 
SUB DIL, 25 
MOVZX AX, AL 
ADC RSI, RDI 
ADC AX, -24321 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
CMPXCHG BX, DI 
AND RBX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], BL 
IMUL EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RCX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], 65 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDX 
NOT AL 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
