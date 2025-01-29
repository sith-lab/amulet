.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
IMUL qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RAX], 123 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RCX, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RCX], RDI 
IMUL EDI, ESI, -12 
AND RBX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RBX], DX 
CMOVO RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
CMP EAX, dword ptr [R14 + RDI] 
CMOVL DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMP BL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
NEG RCX 
CMP BL, 34 
MOVZX RSI, BX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RDI], AX 
CMOVS EAX, EDI 
STD  
CMOVNL RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
