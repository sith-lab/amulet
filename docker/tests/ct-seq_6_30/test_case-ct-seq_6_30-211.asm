.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RBX] 
ADD DIL, 93 # instrumentation
CMOVP RCX, RDX 
ADD AX, 25324 
JMP .bb_main.1 
.bb_main.1:
ADD SIL, 79 # instrumentation
ADC RDX, RCX 
CMP AL, DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK ADC dword ptr [R14 + RDI], -45 
XCHG EBX, ECX 
XCHG DX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 1 # instrumentation
MOV AX, 1 # instrumentation
DIV byte ptr [R14 + RCX] 
ADD SIL, 23 # instrumentation
JNBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
ADD RDX, -98 
SBB AL, 55 
AND RDI, 0b1111111111111 # instrumentation
ADD dword ptr [R14 + RDI], ESI 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
IMUL SI, word ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
SUB AL, 83 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SUB byte ptr [R14 + RAX], SIL 
JO .bb_main.4 
JMP .bb_main.5 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK SUB byte ptr [R14 + RAX], CL 
ADC BX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK ADC byte ptr [R14 + RSI], CL 
CMOVLE RDX, RBX 
JMP .bb_main.5 
.bb_main.5:
AND RAX, 0b1111111111111 # instrumentation
ADC AX, word ptr [R14 + RAX] 
SUB AX, 9933 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
