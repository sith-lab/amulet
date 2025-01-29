.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, -6 
BSWAP RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RAX, qword ptr [R14 + RDX] 
ADD EAX, EBX 
JMP .bb_main.1 
.bb_main.1:
ADD DIL, 60 # instrumentation
CMOVNO RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
CMOVZ DI, BX 
AND RDI, 0b1111111111111 # instrumentation
SUB qword ptr [R14 + RDI], RAX 
OR AL, 1 # instrumentation
MOV AX, 1 # instrumentation
DIV AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RCX], DL 
ADD AX, 8 
JMP .bb_main.2 
.bb_main.2:
ADD SIL, -107 # instrumentation
CMOVNZ EDI, EBX 
SBB EAX, EDX 
MOVSX AX, AL 
SUB RAX, -109 
MOV AL, AL 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ECX 
JMP .bb_main.3 
.bb_main.3:
ADD DIL, -41 # instrumentation
CMOVL DX, CX 
AND RSI, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RSI] 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RAX] 
SUB RAX, 678084085 
AND RBX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RBX], -70 
JMP .bb_main.5 
.bb_main.5:
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
IMUL RDI 
CDQ  
AND RDI, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDI], DL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
