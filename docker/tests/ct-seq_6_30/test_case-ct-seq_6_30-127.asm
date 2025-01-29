.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMP EBX, EDX 
ADD CL, DL 
AND RAX, 0b1111111111111 # instrumentation
SBB BX, word ptr [R14 + RAX] 
CMOVO RDI, RAX 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
MUL ECX 
AND RSI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RSI], 1929105678 
XCHG DI, AX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 33 
XCHG EAX, EBX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
CMOVBE RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
JMP .bb_main.3 
.bb_main.3:
ADD SIL, -24 # instrumentation
INC DI 
SBB BL, DL 
CMOVNBE RAX, RAX 
NEG ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -45 
ADC RDI, RSI 
CMP RSI, -63 
ADC AL, 28 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
JMP .bb_main.4 
.bb_main.4:
MUL RCX 
XCHG RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], DI 
MOVZX RCX, SI 
JB .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
