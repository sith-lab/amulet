.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
DEC CL 
CMOVZ EDX, EBX 
CMP RDX, RCX 
IMUL BX, CX, 10 
INC EAX 
AND RSI, 0b1111111111111 # instrumentation
NEG dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], -64 
CMOVB CX, SI 
AND RDI, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDI] 
MOV RAX, 311882661758529719 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC qword ptr [R14 + RSI], -69 
SUB CL, DL 
OR BX, 1 # instrumentation
AND DX, BX # instrumentation
SHR DX, 1 # instrumentation
DIV BX 
ADD DIL, -91 # instrumentation
SBB RAX, -1113741171 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RSI], 7 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE BX, word ptr [R14 + RSI] 
STC  
CMOVNS SI, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RDX] 
CMOVB ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RCX], SIL 
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADD DL, byte ptr [R14 + RDX] 
XCHG ECX, EAX 
MOV CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
