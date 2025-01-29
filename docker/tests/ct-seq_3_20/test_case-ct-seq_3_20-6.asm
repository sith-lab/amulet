.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], 102 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
ADD AX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RBX] 
CMOVNB RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RCX], AL 
MOVSX RDI, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -1429695061 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
IMUL CL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDX], EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDX, dword ptr [R14 + RSI] 
SBB RAX, RDX 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
CMOVNZ EAX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
