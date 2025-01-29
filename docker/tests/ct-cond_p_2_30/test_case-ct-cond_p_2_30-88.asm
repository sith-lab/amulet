.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX SI, CL 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
DEC RDX 
XCHG ECX, EAX 
SBB SI, 50 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
NEG qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], DL 
DEC DL 
AND RDX, 0b1111111111111 # instrumentation
IMUL EDX, dword ptr [R14 + RDX], -76 
ADD SIL, -128 # instrumentation
CMOVP RDX, RBX 
MOVSX DX, SIL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, 73 # instrumentation
ADC EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RBX], 18 
XCHG EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RDI] 
MUL DI 
AND RCX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RCX], -125 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC EDX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], 1377781118 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RBX] 
CMP RAX, 1808080424 
SBB SI, -13 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
