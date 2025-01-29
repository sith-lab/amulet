.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RAX] 
INC CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDX], -30 
JMP .bb_main.1 
.bb_main.1:
LEA RAX, qword ptr [RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], -126 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 14 
IMUL RDI, RBX 
SBB BL, -37 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -3 # instrumentation
CMOVO CX, BX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
DEC RCX 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], EDX 
CMOVNB RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
SBB DL, -106 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ECX, dword ptr [R14 + RDI] 
CMP BL, BL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
ADD SIL, 122 # instrumentation
SBB EDI, -11 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -103 
AND RAX, 0b1111111111111 # instrumentation
ADC CL, byte ptr [R14 + RAX] 
SUB AL, DL 
JMP .bb_main.5 
.bb_main.5:
NEG RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RBX], -59 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RBX 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
