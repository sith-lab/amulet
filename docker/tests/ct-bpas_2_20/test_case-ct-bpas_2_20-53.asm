.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, -88 # instrumentation
CMOVLE RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -101 
CMOVLE DX, BX 
SUB ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
SBB EBX, 17 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDX] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RBX] 
SUB AL, AL 
MUL SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RDI], EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
