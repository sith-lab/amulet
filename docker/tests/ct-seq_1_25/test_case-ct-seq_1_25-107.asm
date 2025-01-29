.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MUL word ptr [R14 + RAX] 
ADD SIL, 98 # instrumentation
CMOVL EBX, ECX 
IMUL RCX, RBX, -69 
AND RDI, 0b1111111111111 # instrumentation
CMP AL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
ADC CX, 42 
AND RCX, 0b1111111111111 # instrumentation
ADD qword ptr [R14 + RCX], 106 
AND RBX, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RBX] 
INC EBX 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
ADD SIL, 63 # instrumentation
CMOVB RCX, RSI 
CMOVO RSI, RAX 
CMP RBX, RSI 
CMOVP DI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
SBB byte ptr [R14 + RDX], 28 
AND RBX, 0b1111111111111 # instrumentation
LOCK ADD dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], 2 
MUL ECX 
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDX] 
MOV ESI, 892563857 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DIL 
AND RAX, 0b1111111111111 # instrumentation
IMUL RAX, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], 76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
