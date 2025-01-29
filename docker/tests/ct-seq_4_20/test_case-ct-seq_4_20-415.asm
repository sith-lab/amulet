.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 57 # instrumentation
CMOVNS CX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 44 # instrumentation
SBB DI, -55 
CMOVNZ ESI, EBX 
AND RAX, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], 31 
CMOVS AX, AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RAX], 9 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 37 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], EBX 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], 67 
MOVZX EDX, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
AND RCX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RCX] 
MOVSX EBX, AL 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], -102 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
