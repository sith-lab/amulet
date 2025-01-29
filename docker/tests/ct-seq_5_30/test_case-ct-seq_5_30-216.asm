.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DI, -30263 
AND RSI, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RSI] 
CMOVNP RCX, RSI 
AND RBX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], -93 
AND RDX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RCX] 
ADC SIL, CL 
ADD DIL, -10 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
IMUL BX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
CMOVNB SI, DI 
ADC AL, 59 
MOVZX BX, DL 
OR DX, 1 # instrumentation
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, byte ptr [R14 + RAX] 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
IMUL BX, CX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDI] 
CMOVNBE RCX, RBX 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
ADD DIL, 51 # instrumentation
SBB AL, 120 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
