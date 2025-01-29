.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], 1 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], -116 
AND RBX, 0b1111111111111 # instrumentation
SUB EDI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
ADD DIL, -61 # instrumentation
CWD  
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EBX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], 913585194 
CMP EAX, -86 
AND RCX, 0b1111111111111 # instrumentation
SBB DX, word ptr [R14 + RCX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RDX 
INC EBX 
SUB DI, SI 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 120 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
CMOVNL ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
