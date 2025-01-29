.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], -8 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
XCHG EAX, EDX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RCX] 
XCHG EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDX] 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], -83 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 105 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
SBB RDX, -46 
CMP EDX, -45 
SUB DX, 106 
NEG SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
