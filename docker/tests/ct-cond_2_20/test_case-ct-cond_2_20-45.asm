.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], -1 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ESI, dword ptr [R14 + RDI] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
ADC ECX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
INC byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
IMUL byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RDX], CL 
JO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
ADD SIL, -6 # instrumentation
CMOVZ RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK SUB word ptr [R14 + RSI], -10 
AND RDI, 0b1111111111111 # instrumentation
IMUL EDI, dword ptr [R14 + RDI], -62 
AND RSI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
ADD SIL, 12 # instrumentation
ADC BX, -91 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
