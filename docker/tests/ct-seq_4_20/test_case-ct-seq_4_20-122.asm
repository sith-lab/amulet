.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], DIL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], -93 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], SI 
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
CMOVNLE DI, SI 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RBX], 117 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], BL 
MOVZX ECX, BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL RDI, qword ptr [R14 + RAX], 82 
ADD EAX, 106 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG RDX, RAX 
SUB RAX, 1103585059 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RAX], -30 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
