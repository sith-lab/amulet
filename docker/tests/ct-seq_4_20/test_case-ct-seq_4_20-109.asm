.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
SUB EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RAX] 
MOV EBX, ECX 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, -22 # instrumentation
CMOVLE RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], 69 
AND RDI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDI], RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB ESI, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], ECX 
AND RBX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EAX, dword ptr [R14 + RBX] 
CMP EAX, -1529092759 
IMUL AX, AX 
ADD SIL, 93 # instrumentation
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CMP RDX, RBX 
IMUL SI, AX, 22 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDX, qword ptr [R14 + RDI] 
SUB RAX, 167708104 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
