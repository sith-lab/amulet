.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], -36 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], -64 
MUL SIL 
AND RCX, 0b1111111111111 # instrumentation
JMP .bb_main.1 
.bb_main.1:
NEG EAX 
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RSI] 
CMOVNL DI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDX], -21 
SBB BL, 16 
AND RDX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RDX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RDI] 
CMOVNB DX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 93 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
CMP RSI, RDI 
MOV RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
CMOVNO EDI, EDX 
XCHG RAX, RAX 
JMP .bb_main.5 
.bb_main.5:
ADD DIL, 80 # instrumentation
CMOVNP BX, DX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDI] 
ADD SIL, -13 # instrumentation
ADC RAX, -993364773 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], 21 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
