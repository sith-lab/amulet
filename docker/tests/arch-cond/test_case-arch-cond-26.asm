.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RSI 
AND RCX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RCX] 
ADC EDX, 127 
ADC CL, CL 
ADD CX, AX 
AND CX, BX 
CMOVNP CX, BX 
CMOVNP EBX, ECX 
AND BL, -11 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
OR EAX, 1 # instrumentation
AND EDX, EAX # instrumentation
SHR EDX, 1 # instrumentation
DIV EAX 
ADD DIL, 30 # instrumentation
CMOVB ESI, EDI 
STC  
CMOVNL RCX, RDX 
IMUL ESI, EDI, 109 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], AL 
JMP .bb_main.2 
.bb_main.2:
TEST EDI, EDX 
MOV EAX, EDX 
CMP CL, AL 
ADD BL, AL 
OR BX, 115 
AND RDX, 0b1111111111111 # instrumentation
SUB DI, word ptr [R14 + RDX] 
XCHG EDX, EDI 
IMUL DI, SI 
JMP .bb_main.3 
.bb_main.3:
MUL CX 
XOR RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
SETZ SIL 
CMOVZ RDI, RCX 
CMOVBE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
SUB DL, CL 
SETL AL 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDI], -74 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
CMP DIL, -12 
AND RAX, 93110995 
CMOVNP DX, DI 
IMUL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
