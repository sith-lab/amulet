.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EDX, -489840129 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
LEA EAX, qword ptr [RCX + RSI + 54546] 
AND RSI, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RSI] 
MUL BL 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, -69 # instrumentation
CLD  
CMOVNZ ECX, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
ADD DIL, -52 # instrumentation
CMOVL RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
IMUL BX, word ptr [R14 + RBX] 
JNB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RAX] 
MUL AL 
AND RDI, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDI], DI 
CMOVNZ RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
IMUL DI, word ptr [R14 + RDX], -101 
ADD SIL, 90 # instrumentation
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RCX] 
CMOVNBE EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
OR DX, 0b1000000000000000 # instrumentation
BSF DX, DX 
JMP .bb_main.4 
.bb_main.4:
ADD SIL, -90 # instrumentation
ADC EBX, 61 
SBB RAX, -215245093 
CMOVBE BX, DI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
DEC DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
