.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RDI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], 106 
CMOVB ECX, EDX 
CMOVNL RSI, RAX 
CMOVNL EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 1 # instrumentation
AND EDX, dword ptr [R14 + RDI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], 117 
CMOVBE RBX, RAX 
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RAX, qword ptr [R14 + RBX] 
MOVSX EDX, AL 
SUB CL, -79 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
MOVZX RBX, DX 
SUB CL, -35 
CMOVNB SI, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RCX 
JL .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
ADD DIL, 94 # instrumentation
SBB DX, -128 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
ADD RAX, 593880046 
SBB EAX, -1854547405 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RBX], 54 
CMOVNO DI, AX 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 1 # instrumentation
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], 68 
NEG EBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 95 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
