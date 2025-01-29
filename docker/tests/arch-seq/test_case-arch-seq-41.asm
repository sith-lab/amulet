.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SUB AL, -113 
CMP RAX, -1899141294 
INC RSI 
CMPXCHG BX, AX 
NOT EAX 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], 77 
MOV EAX, 1303659015 
AND RSI, RBX 
CMP EAX, 1015560895 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], -8 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 106 # instrumentation
ADC DIL, AL 
AND DI, AX 
AND CL, 17 
XADD DIL, CL 
AND RBX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
SETNZ AL 
XADD EDI, EDX 
JZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RBX], RDI 
CMP CL, SIL 
AND RSI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RSI], AX 
CMP DIL, -23 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -22 
CMOVS ECX, ESI 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], 106 
JMP .bb_main.3 
.bb_main.3:
CLD  # instrumentation
ADD SIL, -86 # instrumentation
SBB AX, 30059 
SBB EDX, EAX 
DEC EDX 
SETNP BL 
CMOVZ RDX, RAX 
SBB AL, 74 
SUB DL, DL 
OR CL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV CL 
ADD SIL, 107 # instrumentation
ADC RAX, -32 
ADD AL, -72 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
