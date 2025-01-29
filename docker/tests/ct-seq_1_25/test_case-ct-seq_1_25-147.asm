.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -124 # instrumentation
SBB EAX, -115 
ADD DIL, -57 
STD  
AND RBX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
CMOVP ECX, ECX 
MOVZX EBX, AL 
ADC EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
ADC RDX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
ADD SIL, 102 # instrumentation
CMOVB SI, AX 
SUB BX, 65 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RCX] 
ADD DIL, 12 # instrumentation
CMOVNS RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RBX], 78 
AND RDX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDX], -29 
ADC RBX, -31 
CMOVL EAX, ESI 
CMOVLE EAX, EDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RDI] 
MOV BL, -110 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], -7 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
