.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
MOV CL, -71 
ADD ESI, EDI 
BSWAP EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], CL 
INC RCX 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], RBX 
ADC AX, -10849 
STC  
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
ADD SIL, 3 # instrumentation
CMOVL AX, SI 
CMOVNZ EBX, EBX 
CLC  
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
SUB DL, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 117 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
ADC RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EBX 
CMOVNLE DX, DI 
SUB RDX, RSI 
XCHG CX, BX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 118 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
IMUL EDX, ECX, -93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
