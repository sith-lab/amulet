.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 108 # instrumentation
CMC  
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL DL 
IMUL BX 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
SUB EAX, -213516920 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
JNBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
MUL ECX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
JNLE .bb_main.3 
JMP .bb_main.5 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RDI] 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], -22 
SUB AX, CX 
ADC EDI, 125 
BSWAP RDI 
CMOVP RCX, RBX 
JNZ .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
MOVZX RBX, AL 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 20 
JZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
CWD  
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
XCHG BL, BL 
ADD BL, BL 
CMOVNBE BX, AX 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
