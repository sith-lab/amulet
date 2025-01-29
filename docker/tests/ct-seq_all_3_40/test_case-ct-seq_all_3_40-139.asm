.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -91 # instrumentation
CMOVS DI, CX 
CMP DIL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
SUB DL, -70 
CMC  
CMOVS ESI, EBX 
SUB AL, 9 
AND RDI, -97 
AND RSI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], AL 
CMP DL, DL 
MOVSX BX, SIL 
CLC  
OR AX, 30221 
CMOVNO RCX, RBX 
TEST DL, -4 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RDI] 
SBB DL, -11 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RAX] 
ADC EAX, EDX 
CMOVNB RBX, RBX 
TEST DL, -70 
SUB DL, -73 
SUB DI, DX 
SBB AX, -14804 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RBX], -51 
INC DI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], 62 
DEC RBX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], EDI 
CBW  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -43 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 1 # instrumentation
AND DX, word ptr [R14 + RDI] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RDI] 
AND AX, -23242 
OR EAX, 635223605 
CMOVS ECX, ESI 
OR CL, -123 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
