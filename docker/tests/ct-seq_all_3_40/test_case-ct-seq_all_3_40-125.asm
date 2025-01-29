.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 8 # instrumentation
SBB EAX, -132171055 
XOR DX, CX 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
CMOVNS EAX, ECX 
INC AL 
CMOVNP EBX, ECX 
SETNL BL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], 119 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
IMUL RBX, RDX, 56 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
CMOVS RDX, RBX 
IMUL DI, AX 
MOVZX ECX, CL 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EBX, dword ptr [R14 + RCX] 
XADD DL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RAX] 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
OR RAX, 1384043667 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
IMUL RBX, RCX, 54 
ADD DIL, -116 # instrumentation
SETNLE SIL 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RCX] 
SUB EAX, ESI 
LEA ESI, qword ptr [RAX + RAX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RCX] 
CMP EAX, -1707740259 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
MOVSX RDI, AL 
CMOVBE RBX, RCX 
AND RBX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
CMOVS RCX, RDI 
SUB RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], 91 
MOVZX RAX, CL 
SETNS BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
