.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 88 # instrumentation
SBB SI, -98 
OR DX, 1 # instrumentation
IMUL RBX, RDI, 104 
ADD SIL, 85 # instrumentation
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RDX] 
ADC RAX, -573505289 
CDQ  
CMP AX, -2764 
SBB DL, BL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
SUB BX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], SI 
SBB DIL, DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
IMUL EAX 
AND RDI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDI], RDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDI] 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SBB RCX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], 78 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, -116 # instrumentation
SBB CL, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADD SI, word ptr [R14 + RDX] 
CMP ECX, -47 
SBB EAX, -435308739 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
SBB AL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
ADC DX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
