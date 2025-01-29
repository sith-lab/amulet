.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], 634811082 
AND RCX, 0b1111111111111 # instrumentation
SBB word ptr [R14 + RCX], BX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK DEC word ptr [R14 + RDI] 
MOV SIL, -62 
AND RDX, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RDX], AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK DEC dword ptr [R14 + RCX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK SUB dword ptr [R14 + RDX], ESI 
IMUL DI, AX, -38 
AND RCX, 0b1111111111111 # instrumentation
LOCK ADD qword ptr [R14 + RCX], -28 
AND RCX, 0b1111111111111 # instrumentation
NEG word ptr [R14 + RCX] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RBX], 48 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
IMUL RSI, qword ptr [R14 + RDI], -115 
ADD SIL, -95 # instrumentation
LOOPE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 1 # instrumentation
AND EDX, dword ptr [R14 + RAX] # instrumentation
SHR EDX, 1 # instrumentation
DIV dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
DEC byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
