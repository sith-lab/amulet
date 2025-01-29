.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RDX], 55 
SBB AL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
OR DI, 1 # instrumentation
AND DX, DI # instrumentation
SHR DX, 1 # instrumentation
DIV DI 
AND RDX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDX], RBX 
JNLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
ADD SIL, 92 # instrumentation
SBB RCX, -89 
MOV RSI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RSI], CL 
JMP .bb_main.2 
.bb_main.2:
OR ESI, 1 # instrumentation
AND EDX, ESI # instrumentation
SHR EDX, 1 # instrumentation
DIV ESI 
INC DIL 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RCX] 
ADD DIL, -48 # instrumentation
CMOVS SI, SI 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
ADD DIL, 64 # instrumentation
CMOVBE SI, CX 
JMP .bb_main.3 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RAX], 100 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
SBB RCX, 96 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], EBX 
AND RSI, 0b1111111111111 # instrumentation
IMUL dword ptr [R14 + RSI] 
ADD AL, -111 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
ADD SIL, -63 # instrumentation
ADC DX, DX 
STD  
SUB AL, -110 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
