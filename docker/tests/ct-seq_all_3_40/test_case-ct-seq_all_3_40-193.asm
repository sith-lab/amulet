.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, BX 
IMUL RDI, RCX, 35 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RCX], -104 
AND RCX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RCX] 
IMUL CL 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], AL 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], AX 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD DIL, 63 # instrumentation
DEC EAX 
XCHG CL, CL 
SBB AL, CL 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
CMP EAX, -1667379587 
CMP AX, 7438 
TEST SIL, 57 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RSI 
SETNS AL 
XADD EDX, EBX 
MOVSX CX, DL 
SUB RAX, 650337778 
CMPXCHG EBX, EAX 
LEA RBX, qword ptr [RDI + RCX + 52617] 
AND RAX, -582242487 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMPXCHG EAX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -113 
XOR EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], 73 
XCHG RDI, RCX 
AND RCX, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
CMP RDI, RSI 
LEA RDX, qword ptr [RDX + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], DL 
SETS AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RCX], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RAX], 80 
CMOVZ EDI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
