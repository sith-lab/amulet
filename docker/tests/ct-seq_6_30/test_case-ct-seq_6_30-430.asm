.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
ADD SIL, BL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -91 # instrumentation
CMOVLE RAX, RSI 
CMOVNLE RDI, RBX 
AND RDX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDX] 
MOV BL, 1 
DEC BX 
ADC RDI, 33 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], AX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RCX], EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], 5 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], -23 
SBB ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 989411754 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -306618597 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], -33 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RDX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], AL 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
ADD SIL, -108 # instrumentation
ADC EAX, -1022805511 
JL .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RDI, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDI] 
ADC AL, -89 
CMOVL RDI, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RAX, byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RBX], RDX 
CMP RAX, 1711728708 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
