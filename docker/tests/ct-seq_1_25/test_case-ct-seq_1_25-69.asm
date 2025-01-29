.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], 492947501 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RAX] 
CMOVBE EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RSI], ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
SBB AX, 1997 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
CMP RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], -31 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], -29 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
CMP AX, 10 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], 84 
ADC ECX, EBX 
IMUL SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], -89 
CMOVNZ DX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
