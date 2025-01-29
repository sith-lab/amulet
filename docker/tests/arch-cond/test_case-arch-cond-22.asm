.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
IMUL RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
CMOVB CX, AX 
MUL SIL 
ADC RDX, 106 
ADC CX, 43 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EAX 
LOOPNE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
TEST RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 89 
XCHG EBX, ECX 
XCHG DX, CX 
JMP .bb_main.2 
.bb_main.2:
ADD AX, 25370 
CMOVZ RDI, RCX 
MUL AL 
TEST EAX, 302267065 
SETZ DIL 
MUL BL 
XCHG RDI, RAX 
NEG CX 
SETNBE DL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
ADD SIL, 41 # instrumentation
SETNZ AL 
SBB RBX, -59 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RSI] 
SETB DIL 
SUB RSI, -72 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
CMPXCHG ECX, EDI 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -78 # instrumentation
CMOVP RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], AL 
XOR DL, CL 
SETBE CL 
JS .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
ADD SIL, -39 # instrumentation
CMOVS EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ECX 
ADC RBX, -74 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -8 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
CMOVLE BX, AX 
CMOVLE ESI, EDX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
