.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, 57 # instrumentation
CMOVNLE RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL RDX, qword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
SUB AX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC word ptr [R14 + RDX] 
MOVZX RCX, BX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EAX, CX 
AND RAX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
CWDE  
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -26 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], -34 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
