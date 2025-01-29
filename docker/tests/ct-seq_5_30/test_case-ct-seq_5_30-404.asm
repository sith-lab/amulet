.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RDI], ESI 
ADC BX, 7 
MOVSX ESI, DL 
AND RCX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], -79 
CMOVZ EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RSI 
CMC  
CMOVL RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RDX], AL 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
SBB CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], AX 
CMP AX, AX 
JMP .bb_main.2 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RAX] 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RCX], 37 
AND RDI, 0b1111111111111 # instrumentation
ADD word ptr [R14 + RDI], 59 
AND RDX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RCX], DIL 
MOV RBX, -8765409090043991488 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, 118 # instrumentation
ADC BL, 127 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
ADC qword ptr [R14 + RSI], RBX 
OR EBX, 1 # instrumentation
AND EDX, EBX # instrumentation
SHR EDX, 1 # instrumentation
DIV EBX 
ADD SIL, 51 # instrumentation
CMOVNB CX, DI 
CMOVNBE RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
