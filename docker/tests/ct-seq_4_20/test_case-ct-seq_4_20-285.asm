.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDX], 84 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -47 
MOV BX, SI 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -735693406 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DI 
ADD CX, BX 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
AND RDI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDI], CL 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RCX] 
CMOVNB DI, SI 
MUL AL 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RAX] 
IMUL DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
SUB AL, -26 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
