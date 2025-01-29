.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RDI], -92 
MOV RCX, 3165789027612712155 
SBB ECX, 125 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDX], 59 
AND RCX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RCX] 
IMUL CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
SUB RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDI] 
AND ESI, 2 
IMUL RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RDI] 
STD  
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], 123 
AND RDI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDI], AL 
CMOVNBE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RDI], -110 
BSWAP ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RSI 
IMUL RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RBX], 114 
SETNP DL 
ADD AX, 23557 
CMOVZ RAX, RBX 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
ADD SIL, 113 # instrumentation
SBB ECX, 39 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
SBB EDX, -59 
CMOVNBE RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RBX], -117 
CMC  
SUB AL, 81 
AND RAX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RAX], EDI 
OR BX, CX 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
ADD EDI, EDX 
AND AX, AX 
IMUL DI 
CWDE  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
