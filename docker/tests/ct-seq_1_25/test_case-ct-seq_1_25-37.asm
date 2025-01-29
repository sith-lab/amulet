.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RDI] 
ADD RSI, RDI 
SBB DI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RCX], 98 
AND RSI, 0b1111111111111 # instrumentation
ADD AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], -1647390063 
AND RDX, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDX], -70 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RCX], RDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
SBB RBX, -62 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RCX], 117 
AND RDX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDX], 25 
ADC RDX, RAX 
CMP RAX, RDX 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], BL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RBX] 
NEG EAX 
CMOVNL EAX, ECX 
DEC CL 
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DIL 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], 55 
CMOVL RCX, RBX 
SBB RDX, 92 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
