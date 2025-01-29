.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -98 # instrumentation
CMOVNP DX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO ESI, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RDX], RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD EAX, -125 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], 63 
AND RCX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RCX], ESI 
AND RCX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RCX], ECX 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
OR BL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV BL 
ADD DIL, 31 # instrumentation
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMP EDX, 29 
AND RAX, 0b1111111111111 # instrumentation
IMUL EBX, dword ptr [R14 + RAX], -122 
IMUL AX, SI 
AND RDX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDX], 40 
CMP DIL, SIL 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDI 
AND RBX, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RBX] 
CMOVL RDX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
