.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MOVSX RDX, DIL 
ADD AX, 17561 
CMP AL, -99 
SUB AL, -46 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
AND RDI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RDI] 
CMOVNP BX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
CMP RDI, -52 
SBB ESI, EDX 
CMOVO DX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDX], SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS SI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
IMUL ESI 
ADD SIL, -30 # instrumentation
CMOVP RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], -103 
MOVZX EAX, CL 
CMOVNBE RDX, RAX 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RCX 
ADC EAX, -767240217 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
ADD BL, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
CMOVNL EAX, EAX 
ADD EAX, 891076602 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RSI 
OR BX, 0b1000000000000000 # instrumentation
BSR BX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], -44 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
