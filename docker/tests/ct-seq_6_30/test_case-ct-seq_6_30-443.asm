.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 95 # instrumentation
XCHG RCX, RAX 
SBB AL, -22 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
ADC RDI, 17 
IMUL AX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RDX] 
MOVZX ESI, CX 
SUB BL, CL 
IMUL EAX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RSI 
BSWAP RDI 
JB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD BX, 32 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], RBX 
MUL RDI 
CMP AX, DI 
AND RAX, 0b1111111111111 # instrumentation
ADD DIL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
INC EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDI] 
ADD SIL, 51 # instrumentation
CMOVL ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
JMP .bb_main.5 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
