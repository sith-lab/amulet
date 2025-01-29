.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RCX], -77 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
MUL DIL 
AND RCX, 0b1111111111111 # instrumentation
SUB RSI, qword ptr [R14 + RCX] 
SBB EDI, EDX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDI], DX 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], 48 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -42 # instrumentation
ADC AX, 22760 
INC CL 
AND RBX, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RBX], 24 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMP RAX, qword ptr [R14 + RDI] 
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], -94 
AND RDI, 0b1111111111111 # instrumentation
CMP dword ptr [R14 + RDI], ESI 
CMOVNP CX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
