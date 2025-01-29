.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
CMOVNB ECX, EDX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, DIL 
CLD  
AND RDX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDX], -125 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], BX 
JB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
IMUL RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RCX] 
DEC DI 
JZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RAX], RCX 
CMOVNL RDX, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 32 
XCHG EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDX] 
MOV BL, -76 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RDI] 
ADD BL, DL 
SBB AL, -14 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -24 # instrumentation
CMOVS AX, DI 
AND RDX, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
SBB SI, word ptr [R14 + RAX] 
CMOVNO DI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
