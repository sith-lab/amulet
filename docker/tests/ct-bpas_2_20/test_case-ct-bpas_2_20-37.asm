.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], BL 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
ADD DX, word ptr [R14 + RSI] 
CMOVLE RCX, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 1 # instrumentation
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 1 # instrumentation
AND DX, word ptr [R14 + RBX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RBX] 
ADD SIL, -118 # instrumentation
CDQ  
CMOVNBE BX, AX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLD  # instrumentation
MOVSX EDI, BL 
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], 116 
BSWAP EDX 
AND RSI, 0b1111111111111 # instrumentation
ADD RSI, R14 # instrumentation
LODSW  
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RAX], 89 
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
SCASB  
DEC AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
