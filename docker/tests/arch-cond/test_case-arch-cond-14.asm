.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -19 
AND RBX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RBX] 
AND DL, CL 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
IMUL EAX, EAX 
MOVSX EDI, BL 
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
AND DL, AL 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RAX 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
CLD  # instrumentation
ADD RAX, -1324453086 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], AX 
SETNS DIL 
CMOVZ ECX, EAX 
MUL RBX 
CMOVB BX, DI 
AND CL, DL 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSD  
ADC SI, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -100 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
SETNP DL 
CMOVNP EDX, EAX 
AND CL, DIL 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
SUB BL, AL 
MUL DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
MOV RDX, -1123403636708405036 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -39 # instrumentation
SETNS DL 
ADD ECX, EAX 
SETO DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], 107 
CMP DIL, 78 
CMOVS SI, CX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
MOVZX DI, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
