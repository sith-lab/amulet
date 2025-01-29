.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDI], DL 
CMOVNZ ECX, EAX 
CMOVLE EBX, ESI 
JMP .bb_main.1 
.bb_main.1:
CLD  # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSB  
CMOVNP DI, DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
MOVZX EDI, DX 
TEST AL, 76 
SETNS AL 
CMOVNS RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX] 
ADD DIL, -42 # instrumentation
MOVSX ECX, BL 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 108 # instrumentation
SETL DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDI] 
NEG DL 
CMOVNBE RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], -74 
NEG CL 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
ADC BX, SI 
SETL BL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RCX] 
MOVSX RDX, DX 
SETNBE AL 
CMPXCHG AL, BL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND RBX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RBX] 
DEC AX 
JMP .bb_main.4 
.bb_main.4:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDI] 
XOR RAX, -600935731 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
CWD  
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], 5 
AND SI, -92 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RSI] 
XADD BX, SI 
IMUL EBX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
