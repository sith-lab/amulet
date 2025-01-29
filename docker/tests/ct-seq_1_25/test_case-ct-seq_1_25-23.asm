.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 4 # instrumentation
CMOVL CX, CX 
CMOVNLE BX, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], -118 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RBX] 
MOVZX RBX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
CMP RDI, 63 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
CMOVP AX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
IMUL ESI, dword ptr [R14 + RDX] 
ADD SIL, 71 # instrumentation
CMOVBE SI, CX 
AND RDX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDX], 122 
SBB EAX, 99 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -125 
SUB EAX, -1587222390 
ADD SIL, DIL 
ADD RAX, 258642377 
SUB CL, BL 
AND RBX, 0b1111111111111 # instrumentation
IMUL DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], -20 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
