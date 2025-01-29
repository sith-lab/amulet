.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RAX], RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RCX], 9 
INC BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RBX], AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], -370675833 
IMUL AX 
AND RDX, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDX] 
SBB AX, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RBX], 123 
AND RAX, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RAX], 48 
SUB EAX, 668355651 
CMOVLE AX, DX 
ADD EAX, 104 
BSWAP EDI 
AND RDI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDI], ECX 
CMOVNZ DX, BX 
ADD SIL, -32 
AND RSI, 0b1111111111111 # instrumentation
ADC EAX, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
