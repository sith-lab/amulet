.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], -50 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], 740377334 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RDX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RCX 
CMOVNP EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -4 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], CL 
AND RCX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RCX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 123 
ADC AL, -35 
CMP EAX, 647968225 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
