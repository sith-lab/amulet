.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RDI], ESI 
ADC RDX, RDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RBX 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
SUB RDX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
INC qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMP DIL, byte ptr [R14 + RCX] 
NEG RDX 
MOV BL, CL 
SUB AL, -3 
AND RDI, 0b1111111111111 # instrumentation
ADC BL, byte ptr [R14 + RDI] 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -64 # instrumentation
CMOVNZ AX, BX 
AND RCX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RCX], RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
