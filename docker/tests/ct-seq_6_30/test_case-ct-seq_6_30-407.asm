.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
MOV DL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RDI] 
SUB AX, -24407 
AND RAX, 0b1111111111111 # instrumentation
SBB DI, word ptr [R14 + RAX] 
MOVSX EDX, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
CMOVB EDX, EDI 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
CMOVNZ DX, CX 
MOVZX EAX, BL 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], ESI 
NEG DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RBX] 
SBB RAX, -315195523 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], RDI 
JMP .bb_main.4 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], -124 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RAX], -95 
JO .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RAX] 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RAX] 
MUL EBX 
SBB EAX, -1837424127 
CMOVNP RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
