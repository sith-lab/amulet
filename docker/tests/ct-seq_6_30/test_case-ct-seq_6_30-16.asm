.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
ADD byte ptr [R14 + RSI], BL 
SUB EDX, -61 
CMOVS ESI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMP CX, word ptr [R14 + RCX] 
CMOVNB RDX, RDI 
MOVSX ECX, BL 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK DEC byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
SUB DX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
SBB EDX, dword ptr [R14 + RBX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
SUB dword ptr [R14 + RAX], -128 
AND RDX, 0b1111111111111 # instrumentation
IMUL ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DIL 
CMOVB RBX, RSI 
SUB SI, -68 
AND RSI, 0b1111111111111 # instrumentation
MUL byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
ADD DIL, -39 # instrumentation
CMOVNP EDX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
INC dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
ADC word ptr [R14 + RSI], -77 
JNZ .bb_main.5 
JMP .bb_main.exit 
.bb_main.5:
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK SBB qword ptr [R14 + RSI], 44 
NEG BL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NEG dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RAX 
IMUL EDX, EAX, 51 
LEA DX, qword ptr [RSI + RSI + 17845] 
AND RAX, 0b1111111111111 # instrumentation
SBB dword ptr [R14 + RAX], -75 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
