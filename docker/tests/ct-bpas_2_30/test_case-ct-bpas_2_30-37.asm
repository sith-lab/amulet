.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX CX, AL 
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
CMOVNB RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
CMOVP DI, AX 
CMOVNZ EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RSI], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
ADC AL, AL 
IMUL RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
CMOVNB EDX, ESI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
IMUL CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RCX] 
ADD DL, AL 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], -103 
XCHG EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 1 # instrumentation
AND DX, word ptr [R14 + RSI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RSI] 
ADD DIL, 63 # instrumentation
CMOVNP RAX, RSI 
MOV BX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
MUL BL 
AND RSI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
