.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD DIL, -41 # instrumentation
SBB BX, DX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], -119 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
ADD EAX, dword ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], -52 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], ECX 
AND RBX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], CX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RSI 
ADC AL, 3 
AND RSI, 0b1111111111111 # instrumentation
INC word ptr [R14 + RSI] 
CMOVNBE ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], 1 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RBX, qword ptr [R14 + RDI] 
ADC BL, DL 
SUB SIL, -38 
ADC AL, -17 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
