.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD RAX, 19 
AND RAX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], AL 
ADC EAX, 594996561 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RBX], DI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], -47 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -72 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], 67 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EBX 
MOV DL, AL 
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD SIL, -7 # instrumentation
CMOVBE DI, BX 
AND RDI, 0b1111111111111 # instrumentation
ADD EDX, dword ptr [R14 + RDI] 
MOVSX RAX, DL 
CMP RAX, -878814779 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
SUB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RBX] 
ADD RCX, -89 
NEG DI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
ADD BX, -123 
CMP EAX, -1819883668 
CMOVNP RDX, RSI 
CMP DI, DI 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], BL 
CMOVNLE RDX, RAX 
XCHG AL, AL 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
