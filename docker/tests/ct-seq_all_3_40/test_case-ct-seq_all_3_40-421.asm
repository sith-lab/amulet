.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RBX] 
ADD DIL, 39 # instrumentation
CMOVO EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 90 
SETB CL 
CMOVBE RDI, RAX 
MOV BX, -28711 
SUB EAX, EDX 
SETNO CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], 9 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, 10 # instrumentation
CMOVP RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], AX 
XCHG RBX, RAX 
OR AX, -95 
AND RSI, RDX 
AND AL, 7 
MOV EDX, 242379904 
XCHG EDI, EAX 
ADC SIL, 112 
AND RAX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RAX], CL 
CLC  
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RAX] 
TEST BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC qword ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
ADD DIL, -8 # instrumentation
CMOVL EDX, EDX 
INC RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDX] 
CMOVZ DX, CX 
IMUL RDI, RAX 
MOVSX EBX, DL 
ADD AX, 3024 
OR SIL, -36 
OR RAX, 1958295371 
XOR ESI, 22 
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RCX], 126 
SETP DL 
CMC  
MOV AL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
