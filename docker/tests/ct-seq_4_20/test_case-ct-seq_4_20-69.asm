.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], BX 
CMP AX, -100 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB word ptr [R14 + RAX], -115 
ADC RAX, 801062505 
CMOVNL EAX, EBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB dword ptr [R14 + RAX], ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RAX], 86 
JNB .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
ADD SIL, -9 # instrumentation
ADC ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMP AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD BX, word ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], 125 
AND RSI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RDI], -9 
CMP SIL, -32 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RCX], BL 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB byte ptr [R14 + RSI], AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
SUB RCX, RSI 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
