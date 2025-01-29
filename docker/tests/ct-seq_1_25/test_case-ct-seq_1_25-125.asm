.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RAX, qword ptr [RDI + RDX] 
AND RBX, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], DX 
SBB AL, 120 
BSWAP RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RDI] 
IMUL BX 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], 424 
CMOVP RSI, RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], -52 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], 57 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RCX] 
CMOVLE EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADC RSI, qword ptr [R14 + RCX] 
CBW  
AND RDI, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RDI], 1 
IMUL RBX, RSI 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
ADC EBX, dword ptr [R14 + RCX] 
IMUL CL 
ADD SIL, 8 # instrumentation
CMOVNBE RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
