.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
ADD RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -136292539 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RSI] 
CMOVZ DI, DX 
CMOVNP ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
SUB RDX, RCX 
CMOVNB AX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], -15 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 73 
ADC AX, -21734 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
ADD CL, byte ptr [R14 + RAX] 
ADC EAX, -119642869 
AND RBX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RBX], 78 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD SIL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
CMOVLE CX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 28 
AND RAX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RAX], -125 
MUL DI 
SBB ECX, -96 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
