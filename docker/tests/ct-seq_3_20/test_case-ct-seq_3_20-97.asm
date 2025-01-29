.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], -70 
AND RCX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RSI] 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RDI 
JMP .bb_main.1 
.bb_main.1:
XCHG DI, AX 
AND RAX, 0b1111111111111 # instrumentation
ADC RAX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], SI 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -115 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], -28080 
AND RAX, 0b1111111111111 # instrumentation
ADD RAX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], 37 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
