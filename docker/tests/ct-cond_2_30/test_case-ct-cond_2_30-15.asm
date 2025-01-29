.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], 15 
MOVSX ECX, DL 
CMP RCX, 21 
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
CMOVNO EAX, EDI 
NEG EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RAX] 
DEC EBX 
MOVSX RBX, DIL 
AND RAX, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RAX] 
IMUL CL 
AND RAX, 0b1111111111111 # instrumentation
SBB DL, byte ptr [R14 + RAX] 
CMP AX, -10036 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD DIL, -128 # instrumentation
CMOVO EDI, ECX 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], ECX 
SBB RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
MUL dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], 1 
MUL DIL 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
CMOVZ DI, BX 
CMOVNB EDI, EDX 
SUB EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RDI], 74 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
