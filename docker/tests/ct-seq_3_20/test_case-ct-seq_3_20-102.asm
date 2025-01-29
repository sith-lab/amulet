.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], AL 
AND RBX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RBX], 114 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], -2 
SBB AL, 112 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
IMUL ESI, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RDX] 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
MOVSX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], -6 
AND RAX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RAX], SIL 
XCHG SIL, CL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD DIL, -106 # instrumentation
ADC AX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
DEC word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
