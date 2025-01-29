.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RCX] 
CMOVL SI, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RSI 
NEG SIL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC byte ptr [R14 + RBX] 
CMOVNP DX, DI 
AND RDX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RBX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
