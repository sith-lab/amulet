.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RBX], EBX 
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], 88 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADC RDI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
ADC CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], BX 
AND RAX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RAX], AL 
JO .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RDX], -2 
AND RAX, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RAX], -15 
AND RSI, 0b1111111111111 # instrumentation
ADD ECX, dword ptr [R14 + RSI] 
ADD AL, CL 
AND RSI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RSI], SI 
AND RDI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RSI] 
NEG ECX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
