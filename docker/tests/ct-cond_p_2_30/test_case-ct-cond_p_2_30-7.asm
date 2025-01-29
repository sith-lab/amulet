.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RBX], -92 
SBB AL, 45 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], EBX 
CMOVNZ CX, CX 
OR SIL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], DL 
AND RSI, 0b1111111111111 # instrumentation
SBB qword ptr [R14 + RSI], -109 
AND RDX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RDX] 
SBB EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RDI], -82 
IMUL SI 
ADD DIL, -101 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RBX], BX 
XCHG EDI, ESI 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
MOV DX, DX 
SBB EDX, -9 
CMOVLE AX, DX 
INC DIL 
AND RCX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RCX], -44 
MOV RBX, RAX 
CMOVP DX, AX 
CBW  
MOVSX RSI, DX 
MUL EDX 
MOVSX RCX, CX 
MOVZX EDX, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
SBB BX, 59 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
