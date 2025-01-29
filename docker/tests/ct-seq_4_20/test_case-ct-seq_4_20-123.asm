.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
ADC AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], -83 
AND RSI, 0b1111111111111 # instrumentation
SUB RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], BL 
AND RCX, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RCX], EDX 
AND RDX, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RDX], 72 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMP RCX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RCX, qword ptr [R14 + RDI] 
ADD DI, BX 
AND RDI, 0b1111111111111 # instrumentation
NEG byte ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
INC RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RSI], -35 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RSI] 
XCHG RCX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
