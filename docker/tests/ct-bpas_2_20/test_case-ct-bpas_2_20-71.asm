.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CLD  # instrumentation
AND RDI, 0b1111111111111 # instrumentation
ADD RDI, R14 # instrumentation
STOSW  
AND RCX, 0b1111111111111 # instrumentation
CMP qword ptr [R14 + RCX], RBX 
AND RDI, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RDI] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
ADD SIL, 67 # instrumentation
CMOVNO ESI, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], 73 
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 78 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
NEG SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RAX], AL 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DX 
MOVSX AX, SIL 
AND RDX, 0b1111111111111 # instrumentation
ADC DL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL RSI, qword ptr [R14 + RAX] 
XCHG EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NEG word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
