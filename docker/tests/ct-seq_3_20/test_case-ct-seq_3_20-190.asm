.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
IMUL RCX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], EDX 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RDI] 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
LAHF  
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RCX], BX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RCX 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
