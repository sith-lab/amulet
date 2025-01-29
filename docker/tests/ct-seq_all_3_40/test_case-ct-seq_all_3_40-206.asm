.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLC  
IMUL RDI 
LEA EDI, qword ptr [RBX + RSI + 27753] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], 85 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RBX] 
CMOVS CX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CMOVNZ BX, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], DL 
SBB EDI, ESI 
XOR SIL, -72 
CMP AX, 4 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], -89 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], BL 
AND EAX, -1855094455 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RDX] 
AND CX, 22 
NOP  
XCHG RSI, RCX 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, 31 # instrumentation
SETNP AL 
CMOVO EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RCX], CX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 112244316 
AND RAX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RAX] 
IMUL EDX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD SIL, 112 # instrumentation
CMOVP AX, DI 
CMPXCHG AX, SI 
NOT CL 
MOVZX RAX, DI 
CMOVO EDX, EDI 
STC  
CMOVNO DI, AX 
SUB RSI, -58 
IMUL BX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
