.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
ADD AL, -70 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], SI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1030087521 
INC RCX 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], 77 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
SUB AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MUL qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], -122 
ADC BL, -101 
AND RBX, 0b1111111111111 # instrumentation
CMP RSI, qword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
ADD EBX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -98 
AND RDI, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
