.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
SUB ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASW  
SUB DL, 117 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG qword ptr [R14 + RBX] 
SUB RAX, -1679516159 
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], EDI 
LEA AX, qword ptr [RBX + RBX + 17930] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
NEG DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RBX] 
ADD BX, 28 
MUL DX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
CMPSD  
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSB  
IMUL RAX, RDI, 40 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], CX 
CMP AX, 21175 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RAX], 11 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -14 # instrumentation
MOV CL, 98 
CMOVNP RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
ADD CX, word ptr [R14 + RSI] 
MOV AL, -58 
CMOVNO EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RDX], DL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RDI] 
SUB RCX, -78 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 3887 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
