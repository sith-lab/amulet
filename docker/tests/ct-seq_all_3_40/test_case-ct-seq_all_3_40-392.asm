.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -39 # instrumentation
SBB CL, -35 
SBB RCX, -124 
AND RDX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RDX] 
MUL BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -114 
MOVSX EDX, CL 
DEC AX 
AND RAX, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RAX] 
NEG AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], DIL 
CWDE  
AND RDI, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -23 
JNBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 10 # instrumentation
XCHG RAX, RAX 
ADC RAX, -621621749 
CMOVNLE AX, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
CMOVL ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DIL 
CMOVO RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], 78 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], 79 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], -39 
OR RDX, -65 
DEC BL 
SETL BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], AL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RCX] 
CMOVNBE DI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RDX] 
XADD AL, DL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
TEST SIL, -116 
AND RSI, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RSI], 32 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -39 
CMPXCHG RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], AX 
XCHG ECX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
