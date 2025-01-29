.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -9 # instrumentation
CMOVL CX, BX 
SAHF  
SBB SIL, AL 
CMP DX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -61 
LAHF  
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
NEG EBX 
MOVZX ESI, SI 
INC ECX 
DEC ESI 
SBB AX, BX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], -60 
MOVSX SI, CL 
MOVSX BX, AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 124 # instrumentation
CMOVNB RDX, RCX 
ADC SIL, 3 
XCHG EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDX], ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
ADC EAX, -101 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDX 
CMOVO EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], 11 
CMOVNLE EDX, ESI 
CMOVZ EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
