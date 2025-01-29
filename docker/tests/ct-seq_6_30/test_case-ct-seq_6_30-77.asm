.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], 64 
ADC ESI, EDI 
DEC BX 
CMP ECX, ECX 
ADD DI, 119 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RSI] 
CMOVNO ECX, ESI 
MOVZX RDI, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, 101 # instrumentation
CMOVLE RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -80 # instrumentation
CMOVO RAX, RBX 
IMUL RCX, RCX, 51 
INC AL 
AND RCX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RDI] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD DIL, -48 # instrumentation
CMOVZ ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, -102 # instrumentation
SBB EDX, EBX 
NEG RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
