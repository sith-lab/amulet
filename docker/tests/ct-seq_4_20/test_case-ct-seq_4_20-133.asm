.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
OR ECX, 1 # instrumentation
AND EDX, ECX # instrumentation
SHR EDX, 1 # instrumentation
DIV ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
INC word ptr [R14 + RBX] 
JL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], DX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
SUB DL, -9 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RCX] 
SAHF  
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], 41 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], 50 
INC CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RDI], 35 
AND RCX, 0b1111111111111 # instrumentation
SBB SIL, byte ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -49 # instrumentation
CMOVNZ EDI, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RBX], RAX 
AND RBX, 0b1111111111111 # instrumentation
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
