.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], SI 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RAX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RBX] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], 84 
MOVSX EBX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EBX 
XCHG SIL, SIL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD DIL, 32 # instrumentation
MOVSX RCX, byte ptr [R14 + RDX] 
LAHF  
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EAX 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RBX] 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], CL 
MOVZX EDI, SI 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], -44 
CMP CL, 84 
ADD BL, -110 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
