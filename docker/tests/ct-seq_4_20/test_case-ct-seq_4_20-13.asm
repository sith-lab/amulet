.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
ADC dword ptr [R14 + RDI], ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK NEG byte ptr [R14 + RDX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
SUB CL, byte ptr [R14 + RDI] 
DEC DIL 
AND RCX, 0b1111111111111 # instrumentation
DEC dword ptr [R14 + RCX] 
ADD DIL, SIL 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RBX], CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMP DX, word ptr [R14 + RCX] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMP RBX, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE CX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EAX, dword ptr [R14 + RDI] 
CMOVB RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK INC dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -53955552 
CMOVO EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
