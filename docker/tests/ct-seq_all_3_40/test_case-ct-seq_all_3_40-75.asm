.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
TEST BL, CL 
CMPXCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 114 
MOV AX, 25985 
MOVZX EDX, AL 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -95 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RAX] 
CMOVNBE BX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
XCHG RBX, RDX 
NEG CX 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RBX] 
SBB RAX, 2115125115 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
ADD SIL, -18 # instrumentation
NOT RBX 
DEC AL 
ADC RDI, 121 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], BX 
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], DX 
DEC DIL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RDX] 
SETLE DL 
AND ESI, 87 
XOR BL, SIL 
ADC AX, 91 
SUB EDI, -21 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RDI] 
SBB RDI, -78 
AND RCX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RCX], 106 
AND RCX, 0b1111111111111 # instrumentation
CMP EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
ADC SIL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], BX 
IMUL AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], AL 
LEA EDI, qword ptr [RBX + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
