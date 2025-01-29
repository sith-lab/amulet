.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -74 # instrumentation
SETP BL 
INC AL 
IMUL DL 
MOV RDI, 1716739622982074134 
ADD RAX, -763744290 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDI 
ADC CL, DL 
CDQ  
TEST BL, 93 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDI] 
MUL BX 
CMPXCHG CL, BL 
INC BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RAX] 
AND CL, CL 
LEA RBX, qword ptr [RDI] 
SBB RCX, RBX 
SBB DIL, -83 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX] 
CWDE  
OR AX, 1 # instrumentation
AND DX, AX # instrumentation
SHR DX, 1 # instrumentation
DIV AX 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], 24 
IMUL EBX, EDI, -83 
ADD SIL, 6 # instrumentation
CMOVLE ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RSI] 
XADD DL, BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], 50 
XOR RSI, -27 
AND RDX, 0b1111111111111 # instrumentation
CMP DL, byte ptr [R14 + RDX] 
SBB EDI, -88 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RDX 
AND RBX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RBX], BX 
ADD RSI, -116 
MOVZX EBX, DI 
AND RCX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RCX], DL 
CMOVLE ESI, EBX 
MOVSX EAX, DL 
CMOVNZ ECX, EBX 
XOR AL, 8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
