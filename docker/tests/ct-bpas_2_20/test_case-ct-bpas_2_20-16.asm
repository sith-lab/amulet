.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 17 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
AND RDX, 0b1111111111111 # instrumentation
ADC BX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], EDX 
AND RBX, 0b1111111111111 # instrumentation
SUB ECX, dword ptr [R14 + RBX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
MOV DI, 19003 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 1 # instrumentation
AND EDX, dword ptr [R14 + RSI] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], -63 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RAX], 123 
AND RAX, 0b1111111111111 # instrumentation
SBB AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], 68 
MUL BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
