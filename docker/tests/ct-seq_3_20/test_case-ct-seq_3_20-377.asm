.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RDX], 69 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDI], DX 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], RDI 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMP EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RBX] 
CMOVZ BX, AX 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], RCX 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RCX], ECX 
CMOVB RBX, RSI 
MOV EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RCX], EBX 
CMOVNB RAX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
