.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
ADD SIL, 18 # instrumentation
ADC RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RSI] 
SUB RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], 31 
CMP DI, 80 
MOV DL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RAX], 118 
BSWAP RDX 
CMOVNS EDX, EBX 
ADD RAX, -1542686253 
LEA ECX, qword ptr [RCX] 
ADC AL, -113 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
DEC EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RSI], DL 
AND RAX, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RAX], RAX 
AND RSI, 0b1111111111111 # instrumentation
SBB AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 1 # instrumentation
AND EDX, dword ptr [R14 + RBX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RBX] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
