.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
ADD DL, AL 
CMOVNP RBX, RDI 
AND RAX, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RAX], 48 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
SAHF  
SBB SIL, 90 
AND RSI, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC word ptr [R14 + RAX], 117 
DEC ECX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RBX] 
CMOVO EDX, EDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EAX, dword ptr [R14 + RAX] 
MOV DL, 10 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMP CL, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMP EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
