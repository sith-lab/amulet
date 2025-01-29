.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -57 # instrumentation
SETZ CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -32 
CMOVNP RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], CL 
ADD AL, -76 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RSI] 
ADD EDI, 45 
AND RSI, 0b1111111111111 # instrumentation
ADC EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 15 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DI, DI 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -1304771368 
CMOVS RAX, RDI 
CMPXCHG EAX, ESI 
MOVZX EDX, SIL 
AND AL, -11 
AND RBX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -99 
CMOVZ DI, AX 
MUL AL 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], -52 
CMOVNBE RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RCX], DL 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
SETO AL 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 18 
CMOVNZ EAX, EAX 
ADD BL, AL 
SUB RAX, -1784096071 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RDX] 
SBB DX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
