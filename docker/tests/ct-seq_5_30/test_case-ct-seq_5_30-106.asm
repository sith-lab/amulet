.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RAX] 
SUB DX, 34 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 1 # instrumentation
AND DX, word ptr [R14 + RCX] # instrumentation
SHR DX, 1 # instrumentation
DIV word ptr [R14 + RCX] 
ADD DIL, -12 # instrumentation
CMOVLE RDX, RAX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RAX 
ADD SIL, 104 # instrumentation
CMOVBE EBX, EDI 
JNL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
SUB RBX, -99 
MOV AL, -20 
AND RBX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RBX] 
ADD AX, 89 
SUB DL, -75 
SUB AX, 16473 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RSI], 36 
AND RSI, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 70 
SUB DIL, -63 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB qword ptr [R14 + RDI], 113 
JMP .bb_main.3 
.bb_main.3:
CLC  
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RAX] 
ADD SIL, -68 
CMOVS RSI, RDI 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
SUB DL, -17 
AND RDI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RDI], SI 
XCHG CX, AX 
MUL ESI 
IMUL DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RDX] 
ADD BL, 91 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
