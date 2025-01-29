.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DI 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
ADD SIL, 88 # instrumentation
CMOVLE DI, BX 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], CX 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], DIL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RCX] 
MUL ECX 
AND RCX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RCX], RDX 
DEC RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
DEC RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RBX], RSI 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], SI 
AND RSI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RSI], 63 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RDX], ESI 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RBX] 
MUL SIL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EBX 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 32 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RCX] 
NEG EDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
