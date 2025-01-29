.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADD word ptr [R14 + RSI], AX 
AND RDX, 0b1111111111111 # instrumentation
SUB EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD byte ptr [R14 + RBX], SIL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
ADC byte ptr [R14 + RSI], DL 
CMP AL, 93 
AND RDI, 0b1111111111111 # instrumentation
SUB RDI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMP word ptr [R14 + RSI], -94 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL DI, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
IMUL word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RSI], DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], SIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
ADD SIL, -46 # instrumentation
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RBX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SUB word ptr [R14 + RDI], DI 
SBB CL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
