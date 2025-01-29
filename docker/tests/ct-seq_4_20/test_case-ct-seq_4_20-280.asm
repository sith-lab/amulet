.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], 91 
DEC EBX 
AND RAX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RAX], DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
ADC DIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RBX] 
CMOVZ ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
CMP SI, 8 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
MUL RBX 
ADD SIL, -96 # instrumentation
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], AL 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
SBB DIL, 23 
AND RCX, 0b1111111111111 # instrumentation
SUB SIL, byte ptr [R14 + RCX] 
MUL RDI 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], DX 
SUB DIL, -84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
