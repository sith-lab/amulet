.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
CWD  
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EBX 
AND RSI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RSI], ECX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], DL 
XCHG RDI, RBX 
CMPXCHG RCX, RBX 
CMOVNB ESI, ECX 
AND BL, 72 
SBB EAX, -1146686744 
SETNP SIL 
AND RAX, RAX 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
AND AX, -28892 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], -55 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], BL 
LEA EDI, qword ptr [RDI + RSI + 26623] 
AND RDI, 0b1111111111111 # instrumentation
ADD RBX, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], -86 
LEA EBX, qword ptr [RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RDI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], -64 
CLC  
AND DX, AX 
IMUL RBX 
ADD DIL, 88 # instrumentation
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], AL 
NEG RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDI], 121 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
ADC EAX, -675252052 
BSWAP EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDX] 
SETNBE BL 
MOV RAX, -2087460179182240977 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], DX 
CMOVNBE DI, DX 
CMOVNP RDI, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 33 
IMUL EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
