.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], BL 
AND RBX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDI] 
MUL CL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 70 # instrumentation
CMOVB EDX, ESI 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -112 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], 52 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDX], 101 
AND RCX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RCX], -6 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], AX 
AND RSI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RSI], BL 
ADC RDX, 105 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], -42 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RSI], 24 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
