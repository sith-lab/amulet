.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], 124 
STC  
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
MOVSW  
CMOVNB EAX, EAX 
CMP SI, -46 
ADC AX, AX 
SBB DX, -106 
AND RSI, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RAX], EDI 
CMP RAX, 849471596 
NEG RSI 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], BL 
ADD DI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
IMUL AL 
IMUL BX 
AND RDI, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RDI], BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RCX] 
CMP EDI, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], 28 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
MOV EBX, -89718816 
AND RCX, 0b1111111111111 # instrumentation
CMP byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -29263 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], -68 
CMP AX, 25064 
MOV EBX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
