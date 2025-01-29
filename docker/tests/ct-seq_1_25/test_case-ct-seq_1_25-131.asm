.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
DEC qword ptr [R14 + RSI] 
MOV BL, CL 
MUL DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RDX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
CMOVS EDI, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], -216299842 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], -6866 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
SUB BL, byte ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, ECX 
ADD SIL, 122 # instrumentation
CWD  
CMOVBE RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1854510889 
BSWAP ECX 
SBB ECX, EDX 
INC RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RSI], RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
SBB RDI, qword ptr [R14 + RBX] 
LEA RDX, qword ptr [RSI + RBX + 2364] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
